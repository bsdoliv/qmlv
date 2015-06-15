#include <QtTest/QtTest>
#include <QObject>
#include <QSqlDatabase>
#include <QSqlQuery>

#include "casapplication/casdata.h"
#include "../bin/casui/loginhandler.h"
#include "../bin/casui/homehandler.h"
#include "../bin/casui/casuidata.h"

class TestHomeHandler : public QObject
{
    Q_OBJECT
public slots:
    void initTestCase() 
    { 
        QString dbconname(this->metaObject()->className());
        {
            QSqlDatabase db = QSqlDatabase::addDatabase("QMYSQL", dbconname);
            db.setHostName("127.0.0.1");
            db.setDatabaseName("ticket");
            db.setUserName("root");
            db.setPassword("");
            db.open();
            db.exec("truncate cas_mcl_mexcontrolelogin");
            db.close();
        }
        QSqlDatabase::removeDatabase(dbconname);
    };
    void cleanupTestCase() { };
    void init() { };
    void cleanup() { };

private slots:
    void logoff_data();
    void logoff();
};

void
TestHomeHandler::logoff_data()
{
    LoginHandler lh;
    CASData::ViewRequest req;
    CASData::ViewResponse resp;

    // success login
    req["user"] = "admin";
    req["passwd"] = "";
    lh.setRequest(&req);
    lh.setResponse(&resp);
    lh.on_loginSubmit();
}

void
TestHomeHandler::logoff()
{
    LoginHandler lh;
    CASData::ViewRequest req;
    CASData::ViewResponse resp;

    // verify if this user is logged in
    req["user_id"] = 0; // admin has user_id = 0
    lh.setRequest(&req);
    lh.setResponse(&resp);
    lh.on_checkUserLogin();

    QCOMPARE(resp["error_msg"].toString(), QString("User already logged in"));
    QCOMPARE(resp["error_cod"].toInt(), 0);
    QCOMPARE(resp["logged_in"].toBool(), true);

    // performs logoff
    HomeHandler ch;
    req.clear();
    resp.clear();
    req["user_id"] = 0;
    ch.setRequest(&req);
    ch.setResponse(&resp);
    ch.on_logoff();

    QCOMPARE(resp["error_msg"].toString(), QString("Logoff Successful"));
    QCOMPARE(resp["error_cod"].toInt(), 0);
    QCOMPARE(resp.next_state, (int)Login);

    // verify if user has been logged off
    req.clear(); resp.clear();
    req["user_id"] = 0; // admin has user_id = 0
    lh.setRequest(&req);
    lh.setResponse(&resp);
    lh.on_checkUserLogin();

    QCOMPARE(resp["error_msg"].toString(), QString("User not logged in"));
    QCOMPARE(resp["error_cod"].toInt(), 1);
    QCOMPARE(resp["logged_in"].toBool(), false);
}

QTEST_MAIN(TestHomeHandler)

#include "test_containerhandler.moc"
