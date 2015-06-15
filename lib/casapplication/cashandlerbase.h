#ifndef CASHANDLERBASE_H
#define CASHANDLERBASE_H

#include <QObject>

#include "casdata.h"

class CASHandlerBase : public QObject
{
    Q_OBJECT
public:
    void setResponse(CASData::ViewResponse* r) {
        respn = r;
    }
    void setRequest(CASData::ViewRequest* r) {
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
    CASData::ViewRequest    *reqst;
    CASData::ViewResponse   *respn;

    const CASData::ViewRequest &request() { return *reqst; }
//    const CASData::ViewRequest *request() { return reqst; }
    CASData::ViewResponse *response() { return respn; }
};

#endif //! CASHANDLERBASE_H
