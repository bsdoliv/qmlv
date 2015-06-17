#ifndef TICKETHANDLER_H
#define TICKETHANDLER_H

#include "qmlappvhandlerbase.h"

struct TicketHandlerPrivate;
class TicketHandler : public QmlAppvHandlerBase
{
    Q_OBJECT
public:
    TicketHandler();
    virtual ~TicketHandler();

public slots:
    // newTicket
    void on_newTicket();
    void on_newConfirm();

    //AddCredit
    void on_newAddConfirm();

    // addCredit
    void on_addCreditButton();
    void on_addValidateCode();
    void on_addCredit();

    // closeTicket
    void on_closeTicketButton();
    void on_closeValidateCode();
    void on_closeConfirm();
    void on_closeBack();

private:
    TicketHandlerPrivate *d;
    QString codeTicket;
    std::string codTicketToPrint;
};

#endif /* TICKETHANDLER_H */
