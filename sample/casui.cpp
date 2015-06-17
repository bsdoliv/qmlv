#include "qmlappv.h"

#include "casuidata.h"
#include "tickethandler.h"
#include "homehandler.h"
#include "loginhandler.h"

int
main(int argc, char **argv)
{
	QmlAppv				qapp(argc, argv, QmlAppv::Maximized);
	QmlAppvData::DisplayStatesMap	map;
	LoginHandler			loginhdlr;
	HomeHandler			homehdlr;
	TicketHandler			tickethdlr;

	/* same states names from qml */
	map.insert(Login, QmlAppvData::StatesValue("login", "loginQmlView"));
	map.insert(Home, QmlAppvData::StatesValue("home", "homeQmlView"));
	map.insert(TicketKeyboard, QmlAppvData::StatesValue("TicketKeyboard",
	    "ticketQmlView"));
	map.insert(TicketDialogConfirm,
	    QmlAppvData::StatesValue("TicketDialogConfirm", "ticketQmlView"));
	map.insert(TicketAddCodeKeyboard,
	    QmlAppvData::StatesValue("TicketAddCodeKeyboard",
	    "ticketQmlView"));
	map.insert(TicketAddCreditDialogConfirm,
	    QmlAppvData::StatesValue("TicketAddCreditDialogConfirm",
	    "ticketQmlView"));
	map.insert(TicketAddCreditKeyboard,
	    QmlAppvData::StatesValue("TicketAddCreditKeyboard",
	    "ticketQmlView"));
	map.insert(TicketAddCredit, QmlAppvData::StatesValue("TicketAddCredit",
	    "ticketQmlView"));
	map.insert(TicketCloseCodeKeyboard,
	    QmlAppvData::StatesValue("TicketCloseCodeKeyboard",
	    "ticketQmlView"));
	map.insert(TicketCloseValidateCode,
	    QmlAppvData::StatesValue("TicketCloseValidateCode",
	    "ticketQmlView"));
	map.insert(TicketCloseConfirm,
	    QmlAppvData::StatesValue("TicketCloseConfirm",
	    "ticketQmlView"));
	map.insert(People, QmlAppvData::StatesValue("People", "homeQmlView"));
	map.insert(Close, QmlAppvData::StatesValue("Close", "homeQmlView"));
	map.insert(Consult, QmlAppvData::StatesValue("Consult",
	    "homeQmlView"));
	map.insert(Accounting,
	    QmlAppvData::StatesValue("Accounting", "homeQmlView"));
	map.insert(File, QmlAppvData::StatesValue("File", "homeQmlView"));
	map.insert(Config, QmlAppvData::StatesValue("Config", "homeQmlView"));
	map.insert(Cash, QmlAppvData::StatesValue("Cash", "homeQmlView"));

	qapp.setDisplayStatesMap(&map);
	qapp.setDisplayQml("qml/main.qml");

	/* on registerHandler() use same name of qml objectName() */
	qapp.registerHandler("loginQmlView", &loginhdlr);
	qapp.registerHandler("homeQmlView", &homehdlr);
	qapp.registerHandler("ticketQmlView", &tickethdlr);

	qapp.setDisplayState(Login);

	return qapp.exec();
}
