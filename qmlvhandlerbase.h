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

#ifndef QMLVHANDLERBASE_H
#define QMLVHANDLERBASE_H

#include <QObject>

#include "qmlvdata.h"

class QmlvHandlerBase  : public QObject
{
	Q_OBJECT
public:
	void setResponse(QmlvData::Response* r) {
		respn = r;
	}
	void setRequest(QmlvData::Request* r) {
		reqst = r;
	}
	void setErrMsg(const QString &msg) {
		response()->insert("errmsg", msg);
	}
	void setErrCod(int errcode) {
		response()->insert("errno", errcode);
	}
	inline void onError(int code, const QString &msg) {
		setErrCod(code);
		setErrMsg(msg);
	}
	inline void onError(const QString &msg) {
		if ((*response())["errno"].toInt() == 0)
			(*response())["errno"] = 1;

		setErrMsg(msg);
	}
	inline void onSuccess(const QString &msg) {
		(*response())["errno"] = 0;
		setErrMsg(msg);
	}

protected:
	QmlvData::Request	*reqst;
	QmlvData::Response	*respn;

	const QmlvData::Request &request() { return *reqst; }
	QmlvData::Response *response() { return respn; }
};

#endif /* QMLVHANDLERBASE_H */
