#include "casapplication/casapplication.h"

#include "test_casapp.h"
#include "../bin/casui/loginhandler.h"

int
main(int argc, char **argv)
{
    CASApplication casapp(argc, argv);

    // same states names from qml
    CASData::DisplayStatesMap map;
    map.insert(Login, CASData::StatesValue("login", "loginQmlView"));
    map.insert(Home, CASData::StatesValue("home", "homeQmlView"));
    map.insert(Ticket, CASData::StatesValue("ticket", "ticketQmlView"));
    casapp.setDisplayStatesMap(&map);
    casapp.setDisplayQml("qml/main.qml");

    // same name of object name from qml
    LoginHandler loginhdlr;
    casapp.registerHandler("loginQmlView", &loginhdlr);
//    casapp.registerHandler("homeQmlView", &homehdlr);
//    casapp.registerHandler("ticketQmlView", &tickethdlr);
    casapp.setDisplayState(Login);
    return casapp.exec();
}
