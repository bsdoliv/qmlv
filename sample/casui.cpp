#include "qmlvapp.h"

#include "casuidata.h"
#include "tickethandler.h"
#include "homehandler.h"
#include "loginhandler.h"

int
main(int argc, char **argv)
{
	QmlvApp				qapp(argc, argv, QmlvApp::Maximized);
	QmlvData::DisplayStatesMap	map;
	LoginHandler			loginhdlr;
	HomeHandler			homehdlr;
	TicketHandler			tickethdlr;

	/* same states names from qml */
	map.insert(Login, QmlvData::StatesValue("login", "loginQmlView"));
	map.insert(Home, QmlvData::StatesValue("home", "homeQmlView"));
	map.insert(TicketKeyboard, QmlvData::StatesValue("TicketKeyboard",
	    "ticketQmlView"));
	map.insert(TicketDialogConfirm,
	    QmlvData::StatesValue("TicketDialogConfirm", "ticketQmlView"));
	map.insert(TicketAddCodeKeyboard,
	    QmlvData::StatesValue("TicketAddCodeKeyboard",
	    "ticketQmlView"));
	map.insert(TicketAddCreditDialogConfirm,
	    QmlvData::StatesValue("TicketAddCreditDialogConfirm",
	    "ticketQmlView"));
	map.insert(TicketAddCreditKeyboard,
	    QmlvData::StatesValue("TicketAddCreditKeyboard",
	    "ticketQmlView"));
	map.insert(TicketAddCredit, QmlvData::StatesValue("TicketAddCredit",
	    "ticketQmlView"));
	map.insert(TicketCloseCodeKeyboard,
	    QmlvData::StatesValue("TicketCloseCodeKeyboard",
	    "ticketQmlView"));
	map.insert(TicketCloseValidateCode,
	    QmlvData::StatesValue("TicketCloseValidateCode",
	    "ticketQmlView"));
	map.insert(TicketCloseConfirm,
	    QmlvData::StatesValue("TicketCloseConfirm",
	    "ticketQmlView"));
	map.insert(People, QmlvData::StatesValue("People", "homeQmlView"));
	map.insert(Close, QmlvData::StatesValue("Close", "homeQmlView"));
	map.insert(Consult, QmlvData::StatesValue("Consult",
	    "homeQmlView"));
	map.insert(Accounting,
	    QmlvData::StatesValue("Accounting", "homeQmlView"));
	map.insert(File, QmlvData::StatesValue("File", "homeQmlView"));
	map.insert(Config, QmlvData::StatesValue("Config", "homeQmlView"));
	map.insert(Cash, QmlvData::StatesValue("Cash", "homeQmlView"));

	qapp.setDisplayStatesMap(&map);
	qapp.setDisplayQml("qml/main.qml");

	/* on registerHandler() use same name of qml objectName() */
	qapp.registerHandler("loginQmlView", &loginhdlr);
	qapp.registerHandler("homeQmlView", &homehdlr);
	qapp.registerHandler("ticketQmlView", &tickethdlr);

	qapp.setDisplayState(Login);

	return qapp.exec();
}
