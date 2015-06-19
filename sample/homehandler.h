#ifndef CONTAINERHANDLER_H
#define CONTAINERHANDLER_H

#include "qmlvhandlerbase.h"

class HomeHandler : public QmlvHandlerBase
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
