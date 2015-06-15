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

#ifndef CASHANDLERBASE_H
#define CASHANDLERBASE_H

#include <QObject>

#include "qmlappvdata.h"

class CASHandlerBase : public QObject
{
    Q_OBJECT
public:
    void setResponse(QmlAppvData::ViewResponse* r) {
        respn = r;
    }
    void setRequest(QmlAppvData::ViewRequest* r) {
        reqst = r;
    }
    void setErrMsg(const QString &errmsg) {
        response()->insert("error_msg", errmsg);
    }
    void setErrCod(int errcode) {
        response()->insert("error_cod", errcode);
    }
    inline void onError(int errcode, const QString &errmsg) {
        setErrCod(errcode);
        setErrMsg(errmsg);
    }
    inline void onError(const QString &errmsg) {
        if ((*response())["error_cod"].toInt() == 0)
            (*response())["error_cod"] = 1;

        setErrMsg(errmsg);
    }
    inline void onSuccess(const QString &errmsg) {
        (*response())["error_cod"] = 0;
        setErrMsg(errmsg);
    }

protected:
    QmlAppvData::ViewRequest    *reqst;
    QmlAppvData::ViewResponse   *respn;

    const QmlAppvData::ViewRequest &request() { return *reqst; }
//    const QmlAppvData::ViewRequest *request() { return reqst; }
    QmlAppvData::ViewResponse *response() { return respn; }
};

#endif //! CASHANDLERBASE_H
