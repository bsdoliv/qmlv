#ifndef CONNECTION_H
#define CONNECTION_H

#include <QtSql/QtSql>


static bool createConnection(const QString newHostName, const QString newDatabase, const QString newUserName, const QString newPassword){

       // QSqlDatabase db = QSqlDatabase::addDatabase("QMYSQL");
      //  db.setHostName(newHostName);
       // db.setDatabaseName(newDatabase);
       // db.setUserName(newUserName);
       // db.setPassword(newPassword);



       // if (!db.open()) {

         //   QSqlError error = db.lastError();


           // return false;
       // }

    return true;
}

#endif // CONNECTION_H
