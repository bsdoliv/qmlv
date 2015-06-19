#include "homehandler.h"
#include "casuidata.h"

void 
HomeHandler::on_logoff()
{
    int user_id = request()["user_id"].toInt();
    QVariantList param, out;
    QString errmsg;

    if (user_id != 0) user_id = 0;

    qDebug() << "request['user_id']" << request()["user_id"];

    param << user_id;
    param << 0; // opcode logoff
    // FIXME dynamic macaddress
    param << "0xff00ff00";
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
