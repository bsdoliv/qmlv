#ifndef LOGINHANDLER_H
#define LOGINHANDLER_H

#include "casapplication/cashandlerbase.h"

class LoginHandler : public CASHandlerBase
{
    Q_OBJECT
public slots:
    void on_loginSubmit();
    void on_checkUserLogin();
};

#endif //! LOGINHANDLER_H
