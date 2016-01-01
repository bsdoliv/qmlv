#include "qmlvapp.h"

#include "casuidata.h"
#include "tickethandler.h"
#include "homehandler.h"
#include "loginhandler.h"

int
main(int argc, char **argv)
{
	QmlvApp				qapp(argc, argv, QmlvApp::Maximized);
	QmlvData::ViewStateMap		map;
	LoginHandler			loginhdlr;
	HomeHandler			homehdlr;
	TicketHandler			tickethdlr;

	/* same states names from qml */
	map.insert(Login, QmlvData::StatePair("login", "loginQmlView"));
	map.insert(Home, QmlvData::StatePair("home", "homeQmlView"));
	map.insert(TicketKeyboard, QmlvData::StatePair("TicketKeyboard",
	    "ticketQmlView"));
	map.insert(TicketDialogConfirm,
	    QmlvData::StatePair("TicketDialogConfirm", "ticketQmlView"));
	map.insert(TicketAddCodeKeyboard,
	    QmlvData::StatePair("TicketAddCodeKeyboard",
	    "ticketQmlView"));
	map.insert(TicketAddCreditDialogConfirm,
	    QmlvData::StatePair("TicketAddCreditDialogConfirm",
	    "ticketQmlView"));
	map.insert(TicketAddCreditKeyboard,
	    QmlvData::StatePair("TicketAddCreditKeyboard",
	    "ticketQmlView"));
	map.insert(TicketAddCredit, QmlvData::StatePair("TicketAddCredit",
	    "ticketQmlView"));
	map.insert(TicketCloseCodeKeyboard,
	    QmlvData::StatePair("TicketCloseCodeKeyboard",
	    "ticketQmlView"));
	map.insert(TicketCloseValidateCode,
	    QmlvData::StatePair("TicketCloseValidateCode",
	    "ticketQmlView"));
	map.insert(TicketCloseConfirm,
	    QmlvData::StatePair("TicketCloseConfirm",
	    "ticketQmlView"));
	map.insert(People, QmlvData::StatePair("People", "homeQmlView"));
	map.insert(Close, QmlvData::StatePair("Close", "homeQmlView"));
	map.insert(Consult, QmlvData::StatePair("Consult",
	    "homeQmlView"));
	map.insert(Accounting,
	    QmlvData::StatePair("Accounting", "homeQmlView"));
	map.insert(File, QmlvData::StatePair("File", "homeQmlView"));
	map.insert(Config, QmlvData::StatePair("Config", "homeQmlView"));
	map.insert(Cash, QmlvData::StatePair("Cash", "homeQmlView"));

	qapp.setStateMap(&map);
	qapp.setQml("qml/main.qml");

	/* on registerHandler() use same name of qml objectName() */
	qapp.registerHandler("loginQmlView", &loginhdlr);
	qapp.registerHandler("homeQmlView", &homehdlr);
	qapp.registerHandler("ticketQmlView", &tickethdlr);

	qapp.setState(Login);

	return qapp.exec();
}
