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

#ifndef QMLVAPP_H
#define QMLVAPP_H

#include <QApplication>

#include "qmlvapp.h"
#include "qmlvdata.h"

class QmlvAppBase : public QObject
{
    Q_OBJECT
public:
    void render(QmlvData::ViewResponse *);

    QmlvAppBase(QObject *);
};

struct QmlvAppPrivate;
class QmlvApp : public QApplication
{ 
    Q_OBJECT
public:
    enum showMode {
        Normal,
        Maximized,
        FullScreen
    };
    QmlvApp(int, char **);
    QmlvApp(int, char **, enum showMode);

    void registerHandler(const QString &, const QObject *);
    int  exec();
    void setDisplayQml(const QString &);
    void setDisplayState(int);
    void setDisplayStatesMap(const QmlvData::DisplayStatesMap *);

protected:
    void init(int sm = Normal);

private slots:
    void router(QmlvData::ViewRequest *);
    void router(QVariant);
    void router();
    void renderView(const QString &, const QmlvData::ViewResponse *);
    QObject *lookupViewByName(const QString &);

private:
    QmlvAppPrivate *d;       
};

#endif /* QMLVAPP_H */