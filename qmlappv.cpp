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
    QObject		*viewo;
    const QMetaObject	*mo;
    QString		 sig;
    QMetaMethod		 method;
    const char		*slot;
    bool		 conn;

    d->controllers.insert(view_id, const_cast<QObject *>(_handler));
    viewo = lookupViewByName(view_id);
    mo = viewo->metaObject();

    Q_ASSERT_X(viewo, "view_root_object",
	   QString("object with view_id %1 not found")
	   .arg(view_id).toAscii().data());

    qDebug("%s: object name %s, viewid %s", Q_FUNC_INFO,
	qPrintable(viewo->objectName()), qPrintable(view_id));

    for (int i = mo->methodOffset(); i < mo->methodCount(); ++i) {
        method = mo->method(i);
        if (method.methodType() != QMetaMethod::Signal) {
	    /*
	     * according to qt code, signals should have a signature with an
	     * prepending 2
	     */
            sig = "2" % QString(method.signature());

            /* no parameters signals support */
            slot = (sig.contains("QVariant")) ?  SLOT(router(QVariant)) :
                SLOT(router());

	    qDebug("%s: connecting method %s, signal %s", Q_FUNC_INFO,
		   qPrintable(method.signature()), qPrintable(sig));

	    conn = QObject::connect(viewo, sig.toAscii().data(), this, slot);

	    qDebug("%s: connect() %s, from %s, to %s", Q_FUNC_INFO, conn ?
		"successful" : "failed", qPrintable(sig), slot);
        }
    }

    /* encapsulates view */
    d->views.insert(view_id, new QmlAppvBase(viewo));
}

void
QmlAppv::setDisplayState(int s)
{
    QString state;

    if (d->current_state == s)
        return;

    d->current_state = s;
    state = d->display_states.stateName(s);
    qDebug("%s: state %s", Q_FUNC_INFO, qPrintable(state));

    QMetaObject::invokeMethod(const_cast<QObject *>(d->view_root_object),
	"changeState", Q_ARG(QVariant, state));
}

void
QmlAppv::renderView(const QString &view_id, const QmlAppvData::ViewResponse
    *resp)
{
    QObject	*o;
    bool	 inv;

    qDebug("%s: response %p", Q_FUNC_INFO, resp);

    if ((o = lookupViewByName(view_id)) == NULL) {
	qDebug("%s: object %s not found", Q_FUNC_INFO, qPrintable(view_id));
        return;
    }

    qDebug("%s: object found %s", Q_FUNC_INFO, qPrintable(o->objectName()));

    inv = QMetaObject::invokeMethod(const_cast<QObject *>(o), "render",
	Q_ARG(QVariant, static_cast<QVariant>(*resp)));

    qDebug("%s: %s invokeMethod('render') %s", Q_FUNC_INFO,
	qPrintable(view_id), inv ?  "successful" : "failed");
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
    qDebug("%s: data %s", Q_FUNC_INFO, qPrintable(data.toString()));
    return router(new QmlAppvData::ViewRequest(data));
}

void
QmlAppv::router(QmlAppvData::ViewRequest *request)
{
    QmlAppvHandlerBase	*o;
    bool		 delreq = false;
    
    /* a request object is always needed for consistency */
    if (!request) {
        request = new QmlAppvData::ViewRequest;
        delreq = true;
    }

    const QMetaObject *mo = sender()->metaObject();
    QString signal = mo->method(senderSignalIndex()).signature();
    QString sender_id = sender()->objectName();

    int c = signal.indexOf("(");
    signal = signal.left(c);

    qDebug("%s: controllers %p", Q_FUNC_INFO, &d->controllers);

    if ((o = reinterpret_cast<QmlAppvHandlerBase *>
	(d->controllers.value(sender_id))) == NULL) {
	    qDebug("%s: could not route given signal from sender %s",
		Q_FUNC_INFO, qPrintable(sender_id));
	    return;
    }

    qDebug("%s: success looking up to %s routing signal", Q_FUNC_INFO,
	qPrintable(sender_id));

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
    bool inv;

    if (!(inv = QMetaObject::invokeMethod(o, method)))
        qDebug("%s: invokeMethod() %s failed", Q_FUNC_INFO, method);

    /* cleanup request */
    if (delreq)
        delete request;

    /* cleanup object response/request pair */
    o->setResponse(0);
    o->setRequest(0);

    if (!inv)
	return;

    /* change screen state */
    int nstate = response.next_state;
    setDisplayState(nstate);
    response["state"] = d->display_states.stateName(nstate);

    /* call render with response */
    qDebug("%s: response %p", Q_FUNC_INFO, &response);
    QString view_id = d->display_states.screenName(nstate);
    renderView(view_id, &response);
}

void
QmlAppv::setDisplayStatesMap(const QmlAppvData::DisplayStatesMap *m)
{
    d->display_states = *m;
}
