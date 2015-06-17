#ifndef LOGINHANDLER_H
#define LOGINHANDLER_H

#include "qmlappvhandlerbase.h"

class LoginHandler : public QmlAppvHandlerBase
{
    Q_OBJECT
public slots:
    void on_loginSubmit();
    void on_checkUserLogin();
};

#endif //! LOGINHANDLER_H
