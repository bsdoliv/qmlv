/*
 * Copyright (c) 2013 Andre de Oliveira <deoliveirambx@googlemail.com>
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

/****************************************************************************
**
** Copyright (C) 2012 Nokia Corporation and/or its subsidiary(-ies).
** Contact: http://www.qt-project.org/
**
** This file is part of the QtCore module of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:BSD$
** You may use this file under the terms of the BSD license as follows:
**
** "Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * Neither the name of Nokia Corporation and its Subsidiary(-ies) nor
**     the names of its contributors may be used to endorse or promote
**     products derived from this software without specific prior written
**     permission.
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
** A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
** LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
** DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
** THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
** OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
**
** $QT_END_LICENSE$
**
****************************************************************************/

#include "qmlviewer.h"
#include "qmlvapp.h"

#include <QtCore/QDir>
#include <QtCore/QFileInfo>
#include <QtDeclarative/QDeclarativeComponent>
#include <QtDeclarative/QDeclarativeEngine>
#include <QtDeclarative/QDeclarativeContext>
#include <QtGui/QApplication>

struct QmlViewerPrivate
{
	QmlViewerPrivate(QDeclarativeView *view_) : view(view_) {}

	QString			 mainQmlFile;
	QDeclarativeView	*view;
	QString			 adjustPath(const QString &path);
};

QString QmlViewerPrivate::adjustPath(const QString &path)
{
#ifdef Q_OS_MAC
	if (!QDir::isAbsolutePath(path))
		return QString::fromLatin1("%1/../Resources/%2")
		    .arg(QCoreApplication::applicationDirPath(), path);
#else
	const QString pathInInstallDir =
	    QString::fromLatin1("%1/../%2").arg(QCoreApplication::applicationDirPath(),
	    path);

	if (QFileInfo(pathInInstallDir).exists())
		return pathInInstallDir;
#endif
	return path;
}

QmlViewer::QmlViewer(QWidget *parent) : QDeclarativeView(parent)
    , d(new QmlViewerPrivate(this))
{
	connect(engine(), SIGNAL(quit()), SLOT(close()));
	setResizeMode(QDeclarativeView::SizeRootObjectToView);
}

QmlViewer::QmlViewer(QDeclarativeView *view, QWidget *parent) :
    QDeclarativeView(parent)
    , d(new QmlViewerPrivate(view))
{
	connect(view->engine(), SIGNAL(quit()), view, SLOT(close()));
	view->setResizeMode(QDeclarativeView::SizeRootObjectToView);
}

QmlViewer::~QmlViewer()
{
	delete d;
}

QmlViewer *QmlViewer::create()
{
	return new QmlViewer();
}

void QmlViewer::setMainQmlFile(const QString &file)
{
	d->mainQmlFile = d->adjustPath(file);
	d->view->setSource(QUrl::fromLocalFile(d->mainQmlFile));
}

void QmlViewer::addImportPath(const QString &path)
{
	d->view->engine()->addImportPath(d->adjustPath(path));
}

void QmlViewer::setOrientation(ScreenOrientation orientation)
{
	Qt::WidgetAttribute attribute;
	switch (orientation) {
#if QT_VERSION < 0x040702
	// Qt < 4.7.2 does not yet have the Qt::WA_*Orientation attributes
	case ScreenOrientationLockPortrait:
		attribute = static_cast<Qt::WidgetAttribute>(128);
		break;
	case ScreenOrientationLockLandscape:
		attribute = static_cast<Qt::WidgetAttribute>(129);
		break;
	default:
	case ScreenOrientationAuto:
		attribute = static_cast<Qt::WidgetAttribute>(130);
		break;
#else // QT_VERSION < 0x040702
	case ScreenOrientationLockPortrait:
		attribute = Qt::WA_LockPortraitOrientation;
		break;
	case ScreenOrientationLockLandscape:
		attribute = Qt::WA_LockLandscapeOrientation;
		break;
	default:
	case ScreenOrientationAuto:
		attribute = Qt::WA_AutoOrientation;
		break;
#endif // QT_VERSION < 0x040702
	};
	setAttribute(attribute, true);
}

void QmlViewer::showExpanded(int mode)
{
	switch (mode) {
	case QmlvApp::FullScreen:
		d->view->showFullScreen();
		break;
	case QmlvApp::Maximized:
		d->view->showMaximized();
		break;
	case QmlvApp::Normal:
		d->view->show();
		break;
	}
}
