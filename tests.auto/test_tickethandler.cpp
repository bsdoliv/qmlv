#include <QtTest/QtTest>
#include <QObject>
#include <QSqlDatabase>
#include <QSqlQuery>

#include "casapplication/casdata.h"
#include "../bin/casui/tickethandler.h"
#include "../bin/casui/casuidata.h"

#include "CASCoreBusiness/BEHistoricoOperacao.h"
#include "CASCoreBusiness/BENovoMovimento.h"
#include "CASCoreBusiness/beclient.h"
#include "CASCoreBusiness/cascorebusiness.h"
#include "CasCoreData/DALTicket.h"
#include "CasCoreData/daoclient.h"
#include "CoreCommom/basebind.h"
#include "CoreCommom/corecommom.h"
#include "CoreCommom/sqlexception.h"
#include "CoreFatory/corefatory.h"

using namespace Model;
using namespace DataAcessLayer;

#define DB_INIT() \
    do { \
        QSqlDatabase db = QSqlDatabase::addDatabase("QMYSQL", dbconname); \
        if (! db.isOpen()) { \
            db.setHostName("127.0.0.1"); \
            db.setDatabaseName("ticket"); \
            db.setUserName("root"); \
            db.setPassword(""); \
            db.open(); \
        } \
    } while (0)

#define DB_FINISH() \
    do { \
        QSqlDatabase::database(dbconname).close(); \
        QSqlDatabase::removeDatabase(dbconname); \
    } while (0) 

class TestTicketHandler : public QObject
{
    Q_OBJECT
public slots:
    void initTestCase() { 
        dbconname = (this->metaObject()->className());
    };
    void cleanupTestCase() {
        DB_INIT();
        cleanupTicket("3487349");
        cleanupTicket("8874733");
        cleanupTicket("4984332");
        DB_FINISH();
    };

    inline void init() { } 
    BEFecharTicket retrieveTicket(const QString &tid);
    void cleanupTicket(const QString &ticket_id);

    inline void cleanup() {
    }

private:
    QString dbconname;

private slots:
    void newTicket();
    void closeTicket_data();
    void closeTicket();
};

void
TestTicketHandler::newTicket() 
{ 
    DB_INIT();
    TicketHandler th;
    CASData::ViewRequest request;
    CASData::ViewResponse response;

    request["ticket_value"] = "50.01";

    th.setRequest(&request);
    th.setResponse(&response);
    th.on_newConfirm();

    // checks response content
    QCOMPARE(response.next_state, (int)TicketKeyboard);
    QCOMPARE(response["error_msg"].toString(), QString("on_newConfirm"));
    QCOMPARE(response["error_cod"].toInt(), 0);
    QCOMPARE(response["ticket_value"].toString(), QString("50.01"));

    // checks for file presence
    QString ticket_id = response["ticket_id"].toString();
    QFile ticketf(QString("/tmp/%1_new.pdf")
                  .arg(ticket_id));
    QVERIFY(ticketf.open(QIODevice::ReadOnly));

    // checks for database register
    try {
        BEFecharTicket tick = retrieveTicket(response["ticket_id"].toString());
    } catch (Exception ex) {
        QCOMPARE(ex.errorNumber(), 0);
        QCOMPARE(QString(ex.Message()), QString(""));
    }

    // cleanup file
    QVERIFY(ticketf.remove());
    ticketf.close();
    // if it's really removed, we should fail here
    QVERIFY(! ticketf.open(QIODevice::ReadOnly));
    // cleanup database register
    cleanupTicket(ticket_id);
    DB_FINISH();
}

void
TestTicketHandler::closeTicket_data()
{
    DB_INIT();
    cleanupTicket("3487349");
    QSqlDatabase::database(dbconname).exec("call _development_manage_create_ticket(1, 1, '3487349', 200.32)");

    cleanupTicket("8874733");
    QSqlDatabase::database(dbconname).exec("call _development_manage_create_ticket(1, 1, '8874733', 300.32)");
    QSqlDatabase::database(dbconname).exec("call _development_manage_add_credit_ticket('8874733', 3.00, 1)");
    QSqlDatabase::database(dbconname).exec("call _development_manage_add_credit_ticket('8874733', 3.00, 1)");
    QSqlDatabase::database(dbconname).exec("call _development_manage_add_credit_ticket('8874733', 3.00, 1)");

    cleanupTicket("4984332");
    QSqlDatabase::database(dbconname).exec("call _development_manage_create_ticket(1, 1, '4984332', 400.32)");
    DB_FINISH();
}

void
TestTicketHandler::closeTicket() 
{ 
    TicketHandler th;
    CASData::ViewRequest request;
    CASData::ViewResponse response;

    QString ticket_id = "3487 349";
    request["ticket_id"] = ticket_id;
    request.current_state = TicketCloseCodeKeyboard;
    long long tckid = QString(ticket_id).remove(QRegExp("[^0-9]")).toLongLong();

    th.setRequest(&request);
    th.setResponse(&response);
    // validate code
    th.on_closeValidateCode();

    // checks response content
    QCOMPARE(QString("%1 %2")
             .arg(response["error_cod"].toInt())
             .arg(response["error_msg"].toString()), 
             QString("%1 on_closeValidateCode")
             .arg(0));
    QCOMPARE(response.next_state, (int)TicketCloseConfirm);
    QCOMPARE(response["ticket_id"].toLongLong(), tckid);
    QCOMPARE(response["entrances_money"].toString(), QString("0"));
    QCOMPARE(response["entrances_ticket"].toString(), QString("0"));
    QCOMPARE(response["entrances_ticket_cash"].toString(), QString("200.32"));
    QCOMPARE(response["entrances_total"].toString(), QString("0"));
    QCOMPARE(response["bet"].toString(), QString("0"));
    QEXPECT_FAIL("", "BUG saldoTotal() returning void", Continue);
    QCOMPARE(response["current_balance"].toString(), QString("0")); 
    QCOMPARE(response["net_payment"].toString(), QString("200.32"));

    // close ticket for real
    request.clear();
    response.clear();
    request["ticket_id"] = ticket_id;
    request.current_state = TicketCloseValidateCode;
    th.setRequest(&request);
    th.setResponse(&response);
    th.on_closeConfirm();

    QCOMPARE(QString("%1 %2")
             .arg(response["error_cod"].toInt())
             .arg(response["error_msg"].toString()), 
             QString("%1 on_closeConfirm")
             .arg(0));

    // check pdf creation
    QFile ticketf(QString("/tmp/%1_close.pdf")
                  .arg(tckid));
    QVERIFY(ticketf.open(QIODevice::ReadOnly));
    QVERIFY(ticketf.remove());
    ticketf.close();
    QVERIFY(! ticketf.open(QIODevice::ReadOnly));

    // checks for database register
    try {
        BEFecharTicket tick = retrieveTicket(ticket_id);
    } catch (Exception ex) {
        // expect 142: ticket closed
        QCOMPARE(ex.errorNumber(), 142);
    }
}

void 
TestTicketHandler::cleanupTicket(const QString &ticket_id) 
{
    DB_INIT();
    QSqlDatabase db = QSqlDatabase::database(dbconname);
    QVERIFY(QSqlQuery(
              QString("CALL _development_manage_create_ticket(0, 1, '%1', null)").arg(ticket_id),
              db).exec());
}

BEFecharTicket 
TestTicketHandler::retrieveTicket(const QString &tid) 
{
    DB_INIT();

    DALTicket *ti = new DALTicket(dbconname);
    // o nome eh FecharTicket mas na real eh so' pra Buscar Dados
    BEHistoricoOperacao  HisFechar;
    HisFechar.SetCodTicket(tid);
    HisFechar.SetDescOperacao("");
    HisFechar.SetCPF("");
    HisFechar.SetDescTabela("");
    HisFechar.SetCodigoUsuario(1);
    HisFechar.SetIDTRansacao("");

    BEFecharTicket *FecharTicket = new BEFecharTicket();
    FecharTicket->SetCode(tid);
    FecharTicket->SetCodeBonif("");
    FecharTicket->SetSave(0);
    FecharTicket->SetMaquina("FF00FF00FF00");
    FecharTicket->SetAbertura(true);
    FecharTicket->SetEncript(0);
    FecharTicket->SetHistoricoOperacao(HisFechar);
    QVariantList out;

    QList<BEFecharTicket> tick;
    tick = ti->FecharTichet(*FecharTicket, out);
    DB_FINISH();

    return tick[0];
}


// we need a QApplication
int
main(int argc, char **argv)
{
    (void)argc;
    (void)argv;

    QApplication app(argc, argv);
    TestTicketHandler test;
    QTest::qExec(&test);
}

#include "test_tickethandler.moc"
