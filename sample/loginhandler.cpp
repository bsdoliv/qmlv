#include "loginhandler.h"
#include "casuidata.h"

void
LoginHandler::on_loginSubmit()
{
    DEBUGME() << "req['user']" << request()["user"];
    DEBUGME() << "req['passwd']" << request()["passwd"];

    QString dbconname(this->metaObject()->className());
    { 
    }

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
    DEBUGME() << "request['user_id']" << request()["user_id"];

    QString dbconname(this->metaObject()->className());

    // success: user_logged_in
    (*response())["logged_in"] =  true;
    return onSuccess("User already logged in");
}
