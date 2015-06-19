#ifndef LOGINHANDLER_H
#define LOGINHANDLER_H

#include "qmlvhandlerbase.h"

class LoginHandler : public QmlvHandlerBase
{
    Q_OBJECT
public slots:
    void on_loginSubmit();
    void on_checkUserLogin();
};

#endif //! LOGINHANDLER_H
