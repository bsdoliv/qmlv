#include "casapplication/casapplication.h"

#include "casuidata.h"
#include "tickethandler.h"
#include "homehandler.h"
#include "loginhandler.h"

int
main(int argc, char **argv)
{
    CASApplication casapp(argc, argv, CASApplication::Maximized);

    CASData::DisplayStatesMap map;
//    map.insert(TicketNew, CASData::StatesValue("ticketNew", "ticketQmlView"));
    // same states names from qml
    map.insert(Login,                        CASData::StatesValue("login", "loginQmlView"));
    map.insert(Home,                         CASData::StatesValue("home", "homeQmlView"));
    map.insert(TicketKeyboard,               CASData::StatesValue("TicketKeyboard", "ticketQmlView"));
    map.insert(TicketDialogConfirm,          CASData::StatesValue("TicketDialogConfirm", "ticketQmlView"));
    map.insert(TicketAddCodeKeyboard,        CASData::StatesValue("TicketAddCodeKeyboard", "ticketQmlView"));
    map.insert(TicketAddCreditDialogConfirm, CASData::StatesValue("TicketAddCreditDialogConfirm", "ticketQmlView"));
    map.insert(TicketAddCreditKeyboard,      CASData::StatesValue("TicketAddCreditKeyboard", "ticketQmlView"));
    map.insert(TicketAddCredit,              CASData::StatesValue("TicketAddCredit", "ticketQmlView"));
    map.insert(TicketCloseCodeKeyboard,      CASData::StatesValue("TicketCloseCodeKeyboard", "ticketQmlView"));
    map.insert(TicketCloseValidateCode,      CASData::StatesValue("TicketCloseValidateCode", "ticketQmlView"));
    map.insert(TicketCloseConfirm,           CASData::StatesValue("TicketCloseConfirm", "ticketQmlView"));
    map.insert(People,                       CASData::StatesValue("People", "homeQmlView"));
    map.insert(Close,                        CASData::StatesValue("Close", "homeQmlView"));
    map.insert(Consult,                      CASData::StatesValue("Consult", "homeQmlView"));
    map.insert(Accounting,                   CASData::StatesValue("Accounting", "homeQmlView"));
    map.insert(File,                         CASData::StatesValue("File", "homeQmlView"));
    map.insert(Config,                       CASData::StatesValue("Config", "homeQmlView"));
    map.insert(Cash,                         CASData::StatesValue("Cash", "homeQmlView"));

    casapp.setDisplayStatesMap(&map);
    casapp.setDisplayQml("qml/main.qml");

    // on registerHandler() use same name of qml objectName()
    LoginHandler loginhdlr;
    casapp.registerHandler("loginQmlView", &loginhdlr);

    HomeHandler homehdlr;
    casapp.registerHandler("homeQmlView", &homehdlr);

    TicketHandler tickethdlr;
    casapp.registerHandler("ticketQmlView", &tickethdlr);

    casapp.setDisplayState(Login);
    return casapp.exec();
}
