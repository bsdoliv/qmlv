#ifndef COREFATORY_H
#define COREFATORY_H

#include <QList>
#include <QString>
#include <QVariantList>
#include <QtSql/QtSql>
#include <QMap>

#include "CoreFatory_global.h"
#include "CoreCommom/basebind.h"
#include "util.h"
#include "CoreCommom/sqlexception.h"
#include "CoreCommom/corecommom.h"

using namespace ManagementConfiguration;

namespace Fatory {

class COREFATORYSHARED_EXPORT CoreFatory
{
public:
    CoreFatory();
    //static QSqlDatabase createConnection();
    static void ExecuteNonQuery(const QString&, QString ProcName,
                                const QVariantList &listparameter = (*((QVariantList*)0)),
                                QVariantList & out = (*((QVariantList*)0)));
};

template<class T> 
class HandleObj
{
public:
    static void HandleDataReader(QSqlDatabase &db, QString comand,
                                  QString comandout,int contparamout,
                                  QList<T>& list, QVariantList& out)
    {
        if (db.isOpen()) { 
            QSqlQuery info(db); 
            if (info.exec(comand)) { 
                while (info.next()) {
                    QSqlRecord record = info.record();
                    T dobj;
                    dobj.bind(record);
                    list.push_back( dobj ); 
                    record.clear();
                } 

                if (comandout != "") {
                    info.exec(comandout);
                    info.next(); 
                    for(int i=0; i < contparamout; i++) {
                        out.push_back(info.value(i).toString());
                    }
                } 
            } else {
                db.close();
                throw SqlException(info.lastError().number(),
                                   info.lastError().databaseText(),
                                   info.lastError().text(),
                                   info.lastError().driverText(),
                                   info.lastError().type());
            } 
            info.clear(); 
        } else {
            throw SqlException(db.lastError().number(),
                               db.lastError().databaseText(),
                               db.lastError().text(),
                               db.lastError().driverText(),
                               db.lastError().type());
        } 
    }
}; // class HandleObj

template <typename T> QList<T> 
GetListbd(const QString& _db, QString ProcName,
          const QVariantList& listparameter = (*((QVariantList*)0)),
          QVariantList& out = (*((QVariantList*)0)))
{
    QSqlDatabase db = QSqlDatabase::database(_db);
    db.open();
    QList<T> listT ;
    QString comando = Util::GetCommand(ProcName, listparameter);
    QString comandout = "";

    QVariantList outParameter = Util::GetParameterOut(listparameter);

    if (outParameter.count() > 0) {
        comandout = Util::GetComandOut(outParameter);
    }

    HandleObj<T>::HandleDataReader(db,comando,comandout,outParameter.count(), listT, out );

    db.close();
    return listT;
}

} // namespace Fatory

#endif // COREFATORY_H
