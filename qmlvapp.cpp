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

#include <QGraphicsObject> /* dynamic_cast from QGraphicsObject to QObject */
#include <QMetaMethod>
#include <QStringBuilder>
#include <QVariant>

#ifndef QT_NO_DEBUG_OUTPUT
#include <QDebug>
#endif

#include "qmlvapp.h"
#include "qmlvhandlerbase.h"
#include "qmlviewer.h"

struct QmlvAppPrivate 
{
	typedef QHash<QString, const QmlvAppBase *>	QmlMap;
	typedef QHash<QString, QObject *>		ControlMap;

	QmlViewer	 viewer;
	int		 current_state;
	QObject		*view_root_object;
	QmlMap		 qmls;
	ControlMap	 ctls;
	QmlvData::ViewStateMap
			 statemap;
	int		 mode;
};

QmlvApp::QmlvApp(int argc, char **argv, enum showMode sm) :
    QApplication(argc, argv),
    d(new QmlvAppPrivate)
{
	d->current_state = -1;
	d->mode = sm;
}

QmlvApp::QmlvApp(int argc, char **argv) : QApplication(argc, argv),
    d(new QmlvAppPrivate)
{ 
	d->current_state = -1;
	d->mode = Normal;
}

void
QmlvApp::setQml(const QString &path)
{
	QApplication::setApplicationName(qApp->argv()[0]);

	d->viewer.setOrientation(QmlViewer::ScreenOrientationAuto);
	d->viewer.setMainQmlFile(path);
	d->viewer.showExpanded(d->mode);

	d->view_root_object = dynamic_cast<QObject *>(d->viewer.rootObject());

	Q_ASSERT_X(d->view_root_object, Q_FUNC_INFO, "view_root_object NULL");
}

int
QmlvApp::exec()
{
	return QApplication::exec();
}

void
QmlvApp::registerHandler(const QString &view_id, const QObject *_handler)
{
	QObject			*viewo;
	const QMetaObject	*mo;
	QString			 sig;
	QMetaMethod		 method;
	const char		*slot;
	bool			 conn;

	d->ctls.insert(view_id, const_cast<QObject *>(_handler));
	viewo = lookupViewByName(view_id);
	Q_ASSERT_X(viewo, Q_FUNC_INFO, QString("object with view_id %1 "
	    "not found").arg(view_id).toAscii().data());

	mo = viewo->metaObject();

	qDebug("%s: object name '%s'", Q_FUNC_INFO,
	    qPrintable(viewo->objectName()));

	for (int i = mo->methodOffset(); i < mo->methodCount(); ++i) {
		method = mo->method(i);
		if (method.methodType() != QMetaMethod::Signal)
			continue;
		/*
		 * according to qt code, signals should have a signature with
		 * an prepending 2
		 */
		sig = "2" % QString(method.signature());

		/* no parameters signals support */
		slot = (sig.contains("QVariant")) ?  SLOT(router(QVariant)) :
		    SLOT(router());

		conn = QObject::connect(viewo, sig.toAscii().data(), this,
		    slot);

		qDebug("%s: viewid '%s', connect %s from '%s'(%s method) to "
		       "'%s'", Q_FUNC_INFO, qPrintable(view_id), conn ?
		       "successful" : "failed", qPrintable(sig),
		       qPrintable(method.signature()), slot);
	}

	/* encapsulates view */
	d->qmls.insert(view_id, new QmlvAppBase(viewo));
}

void
QmlvApp::setState(int s)
{
	QString state;

	if (d->current_state == s)
		return;

	d->current_state = s;
	state = d->statemap.stateName(s);

	qDebug("%s: state %s", Q_FUNC_INFO, state.isEmpty() ? "\"none\"" :
	    qPrintable(state));

	QMetaObject::invokeMethod(const_cast<QObject *>(d->view_root_object),
	    "changeState", Q_ARG(QVariant, state));
}

void
QmlvApp::renderView(const QString &view_id, const QmlvData::Response *resp)
{
	QObject	*o;
	bool	 inv;

	qDebug("%s: response %p", Q_FUNC_INFO, resp);

	if ((o = lookupViewByName(view_id)) == NULL) {
		qDebug("%s: object %s not found", Q_FUNC_INFO,
		    qPrintable(view_id));
		return;
	}

	qDebug("%s: object found %s", Q_FUNC_INFO,
	    qPrintable(o->objectName()));

	inv = QMetaObject::invokeMethod(const_cast<QObject *>(o), "render",
	    Q_ARG(QVariant, static_cast<QVariant>(*resp)));

	qDebug("%s: %s invokeMethod('render') %s", Q_FUNC_INFO,
	    qPrintable(view_id), inv ?  "successful" : "failed");
}

QObject *
QmlvApp::lookupViewByName(const QString &view_id)
{
	return d->view_root_object->findChild<QObject *>(view_id);
}

void
QmlvApp::router()
{
	qDebug("%s", Q_FUNC_INFO);
	return router(static_cast<QmlvData::Request *>(0));
}

void
QmlvApp::router(QVariant data)
{
	qDebug("%s: data %s", Q_FUNC_INFO, data.toString().isEmpty() ?
	    "\"none\"" : qPrintable(data.toString()));
	return router(new QmlvData::Request(data));
}

void
QmlvApp::router(QmlvData::Request *request)
{
	QmlvHandlerBase	*o;
	bool		 delreq = false;
	const char	*method;
	QmlvData::Response
			 response;
	bool		 inv;
	int		 nstate;
	QString		 viewid;

	/* a request object is always needed for consistency */
	if (!request) {
		request = new QmlvData::Request;
		delreq = true;
	}

	const QMetaObject *mo = sender()->metaObject();
	QString signal = mo->method(senderSignalIndex()).signature();
	QString sender_id = sender()->objectName();

	signal = signal.left(signal.indexOf("("));

	qDebug("%s: controllers %p", Q_FUNC_INFO, &d->ctls);

	if ((o = reinterpret_cast<QmlvHandlerBase *>
	    (d->ctls.value(sender_id))) == NULL) {
		qDebug("%s: could not route given signal from sender %s",
		    Q_FUNC_INFO, qPrintable(sender_id));
		return;
	}

	qDebug("%s: routing signal lookup sender '%s': success", Q_FUNC_INFO,
	    qPrintable(sender_id));

	/* 
	 * builds slot name prefix_signalName() and invokes it.
	 * for instance:
	 *	  on_loginSubmit()
	 *	  prefix:	 "on"
	 *	  signalName: "loginSubmit"
	 */
	method = QString("on_" % signal).toAscii().data();
	request->current_state = d->current_state;
	o->setResponse(&response);
	o->setRequest(request);

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
	nstate = response.next_state;
	setState(nstate);
	response["state"] = d->statemap.stateName(nstate);

	/* call render with response */
	qDebug("%s: response %p", Q_FUNC_INFO, &response);
	viewid = d->statemap.screenName(nstate);
	renderView(viewid, &response);
}

void
QmlvApp::setStateMap(const QmlvData::ViewStateMap *m)
{
	d->statemap = *m;
}

QmlvAppBase::QmlvAppBase(QObject *o) : QObject(o)
{
	setObjectName(o->objectName());
}
