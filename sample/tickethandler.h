#ifndef TICKETHANDLER_H
#define TICKETHANDLER_H
#include "CASCoreBusiness/BETicket.h"

#include "casapplication/cashandlerbase.h"

class TicketHandlerPrivate;
class TicketHandler : public CASHandlerBase
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
    QList<Model::BETicket> listInfoTicket;
    std::string codTicketToPrint;
};

#endif //! TICKETHANDLER_H
