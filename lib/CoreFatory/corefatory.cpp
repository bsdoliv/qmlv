#include "corefatory.h"

using namespace Fatory;

CoreFatory::CoreFatory()
{

}

#if 0
QSqlDatabase 
CoreFatory::createConnection(const QString &c)
{
}
#endif

#if 0
QSqlDatabase 
CoreFatory::createConnection()
{
     QMap<QString, QString> credential = 
         Configuration::CredentialDataBase(config_path.isEmpty() ? "" : config_path);
     QMap<QString, QString> credential = 
         Configuration::CredentialDataBase();

     QSqlDatabase  database = QSqlDatabase::addDatabase(credential.value("drivertype"));
        database.setHostName(credential.value("Adresshost"));
        database.setDatabaseName(credential.value("DataBase"));
        database.setUserName(credential.value("UserDataBase"));
        database.setPassword(credential.value("Password"));

     return database;
}
#endif

void 
CoreFatory::ExecuteNonQuery(const QString& dbconname,
                            QString ProcName,
                            const QVariantList &listparameter,
                            QVariantList & out)
{
    QSqlDatabase bd = QSqlDatabase::database(dbconname);
    bd.open();
    if (bd.isOpen()) {
        bd.transaction();
        QSqlQuery execquery(bd);

        if (execquery.exec(Util::GetCommand(ProcName, listparameter))) {
            QVariantList outParameter = Util::GetParameterOut(listparameter);

            if (outParameter.count() > 0) {
                if ( execquery.exec(Util::GetComandOut(outParameter))) {
                     execquery.next();

                    for (int c= 0; c < outParameter.count(); c++) {
                      out.push_back(execquery.value(c).toString());
                    }
                } else {
                    bd.rollback();
                    bd.close();
                    throw SqlException(execquery.lastError().number(),
                                      execquery.lastError().databaseText(),
                                      execquery.lastError().text(),
                                      execquery.lastError().driverText(),
                                      execquery.lastError().type());
                }
            }
        } else {
            bd.close();
            throw SqlException(execquery.lastError().number(),
                              execquery.lastError().databaseText(),
                              execquery.lastError().text(),
                              execquery.lastError().driverText(),
                              execquery.lastError().type());
        }

        execquery.clear();

        bd.commit();
        bd.close();
     } else {
         throw SqlException(bd.lastError().number(),
                           bd.lastError().databaseText(),
                           bd.lastError().text(),
                           bd.lastError().driverText(),
                           bd.lastError().type());
    }
}
