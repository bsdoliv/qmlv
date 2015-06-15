#include <QDebug>
#include <QGraphicsObject> // dynamic_cast from QGraphicsObject to QObject
#include <QMetaMethod>
#include <QStringBuilder>
#include <QVariant>

#include "casapplication.h"
#include "cashandlerbase.h"
#include "casviewbase.h"
#include "qmlappviewer.h"

struct CASApplicationPrivate 
{
    typedef QHash<QString, const CASViewBase *> ViewsMap;
    typedef QHash<QString, QObject *> ControllersMap;

    QmlAppViewer display;
    int current_state;
    QObject *view_root_object;
    ViewsMap views;
    ControllersMap controllers;
    CASData::DisplayStatesMap display_states;
    int show_mode;
//    CASData::Session session;
};

void
CASApplication::init(int sm)
{
    d->current_state = -1;
    d->show_mode = sm;
}

CASApplication::CASApplication(int argc, char **argv, enum showMode sm) :
    QApplication(argc, argv),
    d(new CASApplicationPrivate)
{
    init(sm);
}

CASApplication::CASApplication(int argc, char **argv) : 
    QApplication(argc, argv),
    d(new CASApplicationPrivate)
{ 
    init();
}

void
CASApplication::setDisplayQml(const QString &path)
{
    QApplication::setApplicationName(qApp->argv()[0]);

    d->display.setOrientation(QmlAppViewer::ScreenOrientationAuto);
    d->display.setMainQmlFile(path);
    d->display.showExpanded(d->show_mode);

    d->view_root_object = dynamic_cast<QObject *>(d->display.rootObject());
}

int
CASApplication::exec()
{
    return QApplication::exec();
}

void
CASApplication::registerHandler(const QString &view_id, const QObject *_handler)
{
    d->controllers.insert(view_id, const_cast<QObject *>(_handler));

    QObject *viewo = lookupViewByName(view_id);

    Q_ASSERT_X(viewo, "view_root_object",
           QString("object with view_id %1 not found").arg(view_id).toAscii().data());

    const QMetaObject *mo = viewo->metaObject();
    DEBUGME() 
        << "objectName" << viewo->objectName()
        << "viewid" << view_id;
    
    for (int i = mo->methodOffset(); i < mo->methodCount(); ++i) {
        QMetaMethod method(mo->method(i));
        if (method.methodType() == QMetaMethod::Signal) {
            // ugly qt hack
            QString sig = "2" % QString(method.signature());

            // no parameters signals support
            const char *slot = (sig.contains("QVariant")) ?
                SLOT(router(QVariant)) :
                SLOT(router());

            DEBUGME() 
                << "connecting method" << method.signature()
                << "signal" << sig;
            bool c = QObject::connect(viewo, sig.toAscii().data(), this, slot);
            if (c) 
                DEBUGME() << "**" 
                    << "connect() sucessful" 
                    << "from" 
                    << sig
                    << "to" 
                    << slot;
        }
    }

    // encapsulates view
    d->views.insert(view_id, new CASViewBase(viewo));
}

void
CASApplication::setDisplayState(int s)
{
    if (d->current_state == s)
        return;

    d->current_state = s;
    QString state = d->display_states.stateName(s);
    DEBUGME() << "state" << state;
    QMetaObject::invokeMethod(const_cast<QObject *>(d->view_root_object), 
                              "changeState",
                              Q_ARG(QVariant, state));
}

void
CASApplication::renderView(const QString &view_id, const CASData::ViewResponse *resp)
{
    DEBUGME() << "resp" << resp;
    QObject *o = lookupViewByName(view_id);
    if (!o) {
        // XXX converts to log
        DEBUGME() << "object" << view_id << "not found";
        return;
    }
//    DEBUGME() << "object" << o->objectName();
    bool r = QMetaObject::invokeMethod(const_cast<QObject *>(o), 
                              "render",
                              Q_ARG(QVariant, static_cast<QVariant>(*resp)));
    if (! r)
        // XXX converts to log
        DEBUGME() << "view_id" << view_id << "invokeMethod render()" << r;
}

QObject *
CASApplication::lookupViewByName(const QString &view_id)
{
    return d->view_root_object->findChild<QObject *>(view_id);
}

void
CASApplication::router()
{
    return router(static_cast<CASData::ViewRequest *>(0));
}

void
CASApplication::router(QVariant data)
{
    // dump first
    //CASData::dumpVariant(&data);
    return router(new CASData::ViewRequest(data));
}

void
CASApplication::router(CASData::ViewRequest *request)
{
#if 0
    if (data)
        CASData::dump(data);
#endif
    bool delreq = false;
    if (! request) {
        request = new CASData::ViewRequest;
        delreq = true;
    }

    const QMetaObject *mo = sender()->metaObject();
    QString signal = mo->method(senderSignalIndex()).signature();
    QString sender_id = sender()->objectName();

    int c = signal.indexOf("(");
    signal = signal.left(c);

    CASHandlerBase *o = 
        reinterpret_cast<CASHandlerBase *>(d->controllers.value(sender_id));
    DEBUGME() << "controllers" << d->controllers;

    if (!o) { 
        DEBUGME() << "could not route given signal" << sender_id;
        return;
    }

    DEBUGME() << "success looking up to" << sender_id << "routing signal";

    /* 
     * builds slot name prefix_signalName() and invokes it.
     * for instance:
     *      on_loginSubmit()
     *      prefix:     "on"
     *      signalName: "loginSubmit"
     */
    const char *method = QString("on_%1").arg(signal).toAscii().constData();
    CASData::ViewResponse response;
    request->current_state = d->current_state;
    o->setResponse(&response);
    o->setRequest(request);
    bool inv = QMetaObject::invokeMethod(o, method);
    if (delreq)
        delete request;

    o->setResponse(0);
    o->setRequest(0);

    if (! inv) {
        DEBUGME() << "invokeMethod()" << method << "failed";
        // log error on routing and drops signal
        return;
    }

    // change screen state
    int nstate = response.next_state;
    setDisplayState(nstate);
    response["state"] = d->display_states.stateName(nstate);

    // call render with response
    DEBUGME() << "response" << response;
    QString view_id = d->display_states.screenName(nstate);
    renderView(view_id, &response);
}

void
CASApplication::setDisplayStatesMap(const CASData::DisplayStatesMap *m)
{
    d->display_states = *m;
}
