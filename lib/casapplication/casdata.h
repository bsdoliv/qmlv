#ifndef CASDATA_H
#define CASDATA_H

#include <QVariant>
#include <QDebug>

#define DEBUGME() \
    qWarning() << Q_FUNC_INFO

namespace CASData 
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

#if 0
    struct Session {
        BEPessoa pessoa;
        BEObterExpiracaoTicket expira_ticket;
        int macaddress;
    };
#endif
};

Q_DECLARE_METATYPE(CASData::ViewRequest);
Q_DECLARE_METATYPE(CASData::ViewResponse);

#endif //! CASDATA_H
