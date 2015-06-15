/*
 * Copyright (c) 2011-2015 Andre de Oliveira <deoliveirambx@googlemail.com>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF MIND, USE, DATA OR PROFITS, WHETHER
 * IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING
 * OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 */

#include <QDebug>
#include <QGraphicsObject> /* dynamic_cast from QGraphicsObject to QObject */
#include <QMetaMethod>
#include <QStringBuilder>
#include <QVariant>

#include "qmlappv.h"
#include "qmlappvhandlerbase.h"
#include "qmlappvbase.h"
#include "qmlappviewer.h"

struct QmlAppvPrivate 
{
    typedef QHash<QString, const QmlAppvBase *> ViewsMap;
    typedef QHash<QString, QObject *> ControllersMap;

    QmlAppViewer display;
    int current_state;
    QObject *view_root_object;
    ViewsMap views;
    ControllersMap controllers;
    QmlAppvData::DisplayStatesMap display_states;
    int show_mode;
};

void
QmlAppv::init(int sm)
{
    d->current_state = -1;
    d->show_mode = sm;
}

QmlAppv::QmlAppv(int argc, char **argv, enum showMode sm) :
    QApplication(argc, argv),
    d(new QmlAppvPrivate)
{
    init(sm);
}

QmlAppv::QmlAppv(int argc, char **argv) : 
    QApplication(argc, argv),
    d(new QmlAppvPrivate)
{ 
    init();
}

void
QmlAppv::setDisplayQml(const QString &path)
{
    QApplication::setApplicationName(qApp->argv()[0]);

    d->display.setOrientation(QmlAppViewer::ScreenOrientationAuto);
    d->display.setMainQmlFile(path);
    d->display.showExpanded(d->show_mode);

    d->view_root_object = dynamic_cast<QObject *>(d->display.rootObject());
}

int
QmlAppv::exec()
{
    return QApplication::exec();
}

void
QmlAppv::registerHandler(const QString &view_id, const QObject *_handler)
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
    d->views.insert(view_id, new QmlAppvBase(viewo));
}

void
QmlAppv::setDisplayState(int s)
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
QmlAppv::renderView(const QString &view_id, const QmlAppvData::ViewResponse *resp)
{
    DEBUGME() << "resp" << resp;
    QObject *o = lookupViewByName(view_id);
    if (!o) {
        // XXX converts to log
        DEBUGME() << "object" << view_id << "not found";
        return;
    }
    DEBUGME() << "object" << o->objectName();
    bool r = QMetaObject::invokeMethod(const_cast<QObject *>(o), 
                              "render",
                              Q_ARG(QVariant, static_cast<QVariant>(*resp)));
    if (! r)
        // XXX converts to log
        DEBUGME() << "view_id" << view_id << "invokeMethod render()" << r;
}

QObject *
QmlAppv::lookupViewByName(const QString &view_id)
{
    return d->view_root_object->findChild<QObject *>(view_id);
}

void
QmlAppv::router()
{
    return router(static_cast<QmlAppvData::ViewRequest *>(0));
}

void
QmlAppv::router(QVariant data)
{
    // dump first
    //QmlAppvData::dumpVariant(&data);
    return router(new QmlAppvData::ViewRequest(data));
}

void
QmlAppv::router(QmlAppvData::ViewRequest *request)
{
#if 0
    if (data)
        QmlAppvData::dump(data);
#endif
    bool delreq = false;
    if (! request) {
        request = new QmlAppvData::ViewRequest;
        delreq = true;
    }

    const QMetaObject *mo = sender()->metaObject();
    QString signal = mo->method(senderSignalIndex()).signature();
    QString sender_id = sender()->objectName();

    int c = signal.indexOf("(");
    signal = signal.left(c);

    QmlAppvHandlerBase *o =
        reinterpret_cast<QmlAppvHandlerBase *>(d->controllers.value(sender_id));
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
    QmlAppvData::ViewResponse response;
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
QmlAppv::setDisplayStatesMap(const QmlAppvData::DisplayStatesMap *m)
{
    d->display_states = *m;
}
