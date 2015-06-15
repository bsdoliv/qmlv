#ifndef CONTAINERHANDLER_H
#define CONTAINERHANDLER_H

#include "casapplication/cashandlerbase.h"

class HomeHandler : public CASHandlerBase
{
    Q_OBJECT
public slots:
    void on_logoff();
    void on_ticketButton();
    void on_homeButton();
    void on_peopleButton();
    void on_closeButton();
    void on_consultButton();
    void on_accountingButton();
    void on_fileButton();
    void on_configButton();
    void on_cashButton();
};

#endif //! CONTAINERHANDLER_H
