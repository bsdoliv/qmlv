#ifndef TICKETHANDLER_H
#define TICKETHANDLER_H

#include "qmlvhandlerbase.h"

class TicketHandler : public QmlvHandlerBase
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
    QString codeTicket;
    std::string codTicketToPrint;
};

#endif /* TICKETHANDLER_H */
