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

#ifndef QMLAPPV_H
#define QMLAPPV_H

#include <QApplication>

#include "qmlappvdata.h"

struct QmlAppvPrivate;
class QmlAppv : public QApplication
{ 
    Q_OBJECT
public:
    enum showMode {
        Normal,
        Maximized,
        FullScreen
    };
    QmlAppv(int argc, char **argv);
    QmlAppv(int argc, char **argv, enum showMode sm);

    void registerHandler(const QString &s, const QObject *dst);
    int  exec();
    void setDisplayQml(const QString &p);
    void setDisplayState(int s);
    void setDisplayStatesMap(const QmlAppvData::DisplayStatesMap *m);

protected:
    void init(int sm = Normal);

private slots:
    void router(QmlAppvData::ViewRequest *);
    void router(QVariant);
    void router();
    void renderView(const QString &, const QmlAppvData::ViewResponse *);
    QObject *lookupViewByName(const QString &);

private:
    QmlAppvPrivate *d;       
};

#endif /* QMLAPPV_H */
