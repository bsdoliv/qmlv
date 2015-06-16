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

#ifndef QMLAPPVDATA_H
#define QMLAPPVDATA_H

#include <QVariant>
#include <QDebug>

#define DEBUGME() \
    qWarning() << Q_FUNC_INFO

namespace QmlAppvData
{
    struct StatesValue {
        QString state_id;
        QString screen_id;
        explicit StatesValue(const QString &_state, const QString &_screen) :
            state_id(_state),
            screen_id(_screen) { }
        StatesValue() { }
    };

    class DisplayStatesMap : public QHash<int, StatesValue> {
    public:
        DisplayStatesMap() : QHash<int, StatesValue>() { };
        inline QString screenName(int id) { return value(id).screen_id; };
        inline QString stateName(int id) { return value(id).state_id; };
    };

    typedef QVariantMap ViewData;
    class ViewRequest : public ViewData { 
    public:
        ViewRequest() : ViewData() { }
        ViewRequest(const QVariant &d) : ViewData(d.toMap()) { }
            //static_cast<QVariantMap>(*this) = d.toMap();
        int current_state;
    };
    class ViewResponse : public ViewData { 
    public:
        int next_state;
    };

    static inline void dump(const ViewRequest *data) {
        qWarning() << "CASData::dump keys" << data->keys();
        qWarning() << "CASData::dump values" << data->values();
    }

    static inline void dumpVariant(const QVariant *data) {
        QVariantMap rdata = data->toMap();
        qWarning() << "CASData::dumpVariant keys" << rdata.keys();
        qWarning() << "CASData::dumpVariant values" << rdata.values();
    }
};

Q_DECLARE_METATYPE(QmlAppvData::ViewRequest);
Q_DECLARE_METATYPE(QmlAppvData::ViewResponse);

#endif /* QMLAPPVDATA_H */
