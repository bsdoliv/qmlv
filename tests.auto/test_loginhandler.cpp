#include <QtTest/QtTest>
#include <QObject>
#include <QSqlDatabase>
#include <QSqlQuery>

#include "casapplication/casdata.h"
#include "../bin/casui/loginhandler.h"
#include "../bin/casui/casuidata.h"

class TestLoginHandler : public QObject
{
    Q_OBJECT
public slots:
    void initTestCase() { };
    void cleanupTestCase() { };
    void init() {
    };
    void cleanup() {
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
    }

private slots:
    void loginSubmitFail();
    void loginSubmitSuccess();
    void bugProcControleUsuario();
};

void
TestLoginHandler::bugProcControleUsuario()
{
    LoginHandler lh;
    CASData::ViewRequest req;
    CASData::ViewResponse resp;

    req["user"] = "admin";
    req["passwd"] = "";
    lh.setRequest(&req);
    lh.setResponse(&resp);
    lh.on_loginSubmit();
    QVERIFY(resp.next_state != (int)Login);
    QVERIFY(resp["error_cod"].toInt() != 1);
    QVERIFY(resp["error_msg"].toString() != 
             QString("Cursor is not open QMYSQL: Unable to execute query"));
}

void
TestLoginHandler::loginSubmitFail()
{
    LoginHandler lh;
    CASData::ViewRequest req;
    CASData::ViewResponse resp;

    // error case
    req["user"] = "teste";
    req["passwd"] = "teste";
    lh.setRequest(&req);
    lh.setResponse(&resp);
    lh.on_loginSubmit();
    QCOMPARE(resp.next_state, (int)Login);
    QCOMPARE(resp["error_cod"].toInt(), 1);
    QCOMPARE(resp["error_msg"].toString(), QString("User not found."));
}

void
TestLoginHandler::loginSubmitSuccess()
{
    LoginHandler lh;
    CASData::ViewRequest req;
    CASData::ViewResponse resp;

    // success case
    req["user"] = "admin";
    req["passwd"] = "";
    lh.setRequest(&req);
    lh.setResponse(&resp);
    lh.on_loginSubmit();
    QCOMPARE(resp["error_msg"].toString(), QString("Login Successful"));
    QCOMPARE(resp["error_cod"].toInt(), 0);
    QCOMPARE(resp.next_state, (int)Home);

    req.clear();
    resp.clear();

    // admin has user_id = 0
    req["user_id"] = 0;

    lh.setRequest(&req);
    lh.setResponse(&resp);
    lh.on_checkUserLogin();

    qWarning() << "res" << resp;
    QCOMPARE(resp["error_msg"].toString(), QString("User already logged in"));
    QCOMPARE(resp["error_cod"].toInt(), 0);
    QCOMPARE(resp["logged_in"].toBool(), true);
}

QTEST_MAIN(TestLoginHandler)

#include "test_loginhandler.moc"
