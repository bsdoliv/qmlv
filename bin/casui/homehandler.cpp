#include "CASCoreBusiness/BEPessoa.h"
#include "CASCoreBusiness/beclient.h"
#include "CASCoreBusiness/cascorebusiness.h"
#include "CasCoreData/DAOPessoa.h"
#include "CasCoreData/daoclient.h"
#include "CoreCommom/basebind.h"
#include "CoreCommom/corecommom.h"
#include "CoreCommom/sqlexception.h"
#include "CoreFatory/corefatory.h"

using namespace std;
using namespace Model;
using namespace DataAcessLayer;

#include "homehandler.h"
#include "casuidata.h"

void 
HomeHandler::on_logoff()
{
    DEBUGME() << "request['user_id']" << request()["user_id"];

    int user_id = request()["user_id"].toInt();

    if (user_id != 0) user_id = 0;

    QString dbconname(this->metaObject()->className());
    { 
        QSqlDatabase db = QSqlDatabase::addDatabase("QMYSQL", dbconname);
        if (! db.isOpen()) {
            db.setHostName("127.0.0.1");
            db.setDatabaseName("ticket");
            db.setUserName("root");
            db.setPassword("");
        }
    }
    DAOPessoa dao(dbconname);
    QVariantList param, out;
    param << user_id;
    param << 0; // opcode logoff
    // FIXME dynamic macaddress
    param << "0xff00ff00";
    QString errmsg;
    try {
        dao.manageLogin(param, out);
    } catch (Exception& ex) {
        response()->next_state = request().current_state;
        errmsg = ex.Message();
    }

    QSqlDatabase::database(dbconname).close();
    QSqlDatabase::removeDatabase(dbconname);

    if (! errmsg.isEmpty())
        return onError(errmsg);

    response()->next_state = Login;
    return onSuccess("Logoff Successful");
}

void 
HomeHandler::on_ticketButton()
{
    response()->next_state = TicketKeyboard;
    return onSuccess("Ticket Button");
}

void 
HomeHandler::on_homeButton()
{
    response()->next_state = Home;
    return onSuccess("Home Button");
}

void 
HomeHandler::on_peopleButton()
{
    response()->next_state = People;
    return onSuccess("Home Button");
}

void 
HomeHandler::on_closeButton()
{
    response()->next_state = Close;
    return onSuccess("Home Button");
};

void 
HomeHandler::on_consultButton()
{
    response()->next_state = Consult;
    return onSuccess("Home Button");
};

void 
HomeHandler::on_accountingButton()
{
    response()->next_state = Accounting;
    return onSuccess("Home Button");
};

void 
HomeHandler::on_fileButton()
{
    response()->next_state = File;
    return onSuccess("Home Button");
};

void 
HomeHandler::on_configButton()
{
    response()->next_state = Config;
    return onSuccess("Home Button");
};

void 
HomeHandler::on_cashButton()
{
    response()->next_state = Cash;
    return onSuccess("Home Button");
};
