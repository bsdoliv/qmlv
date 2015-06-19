#include "loginhandler.h"
#include "casuidata.h"

void
LoginHandler::on_loginSubmit()
{
    qDebug() << "req['user']" << request()["user"];
    qDebug() << "req['passwd']" << request()["passwd"];

    QString errmsg;
    bool error = false;

    if (error)
        return onError(errmsg);

    return onSuccess(errmsg);
}

void
LoginHandler::on_checkUserLogin()
{
    // FIXME it should be retrieved from session
    qDebug() << "request['user_id']" << request()["user_id"];

    QString dbconname(this->metaObject()->className());

    // success: user_logged_in
    (*response())["logged_in"] =  true;
    return onSuccess("User already logged in");
}
