#include <QSqlError>

#include "CASCoreBusiness/BEPessoa.h"
#include "CASCoreBusiness/beclient.h"
#include "CASCoreBusiness/cascorebusiness.h"
#include "CasCoreData/DAOPessoa.h"
#include "CasCoreData/daoclient.h"
#include "CoreCommom/basebind.h"
#include "CoreCommom/corecommom.h"
#include "CoreCommom/sqlexception.h"
#include "CoreFatory/corefatory.h"

using namespace Model;
using namespace DataAcessLayer;

#include "loginhandler.h"
#include "casuidata.h"

void
LoginHandler::on_loginSubmit()
{
    DEBUGME() << "req['user']" << request()["user"];
    DEBUGME() << "req['passwd']" << request()["passwd"];

    QString dbconname(this->metaObject()->className());
    { 
        QSqlDatabase db = QSqlDatabase::addDatabase("QMYSQL", dbconname);
        if (! db.isOpen()) {
            db.setHostName("127.0.0.1");
            db.setDatabaseName("ticket");
            db.setUserName("root");
            db.setPassword("");
        }
    }

    QString errmsg;
    bool error = false;
    try {
        BEPessoa objpessoa;
        objpessoa.SetLogin(request()["user"].toString());
        objpessoa.SetExpiraSenha(false);
        objpessoa.SetSenha(request()["passwd"].toString());
        objpessoa.SetSenhaDescod(request()["passwd"].toString());
        QList<BEPessoa> list;
        QVariantList out;
        DAOPessoa dao(dbconname);
        list << dao.getPessoa(objpessoa, out);

        // TODO implementar verificacao de usuario logado
        // TODO implementar verificacao de usuario bloqueado
        // TODO implementar verificacao de password md5
        DEBUGME() << "list" << list.isEmpty();
        if (! list.isEmpty()) {
            QVariantList param;
            param << list[0].codigo;
            // FIXME dynamic macaddress
            param << 1; // opcode logind
            param << "0xff00ff00";
            out.clear();
            dao.manageLogin(param, out);

            errmsg = "Login Successful";
            response()->next_state = Home;
        } else {
            error = true;
            errmsg = "User not found.";
            response()->next_state = Login;
        }
    } catch (Exception& ex) {
        response()->next_state = Login;
        error = true;
        errmsg = ex.Message();
    }

    QSqlDatabase::database(dbconname).close();
    QSqlDatabase::removeDatabase(dbconname);

    if (error)
        return onError(errmsg);

    // send to qml
    
    // TODO implementar persistencia de macaddress
    // TODO implementar session
    return onSuccess(errmsg);
}

void
LoginHandler::on_checkUserLogin()
{
    // FIXME it should be retrieved from session
    DEBUGME() << "request['user_id']" << request()["user_id"];

    QString dbconname(this->metaObject()->className());
    {
        QSqlDatabase db = QSqlDatabase::addDatabase("QMYSQL", dbconname);
        db.setHostName("127.0.0.1");
        db.setDatabaseName("ticket");
        db.setUserName("root");
        db.setPassword("");

        (*response())["logged_in"] = false;
        setErrCod(1);
        if (! db.open())
            return onError("Problema ao abrir conexao com o banco");
    }

    QSqlQuery q(QSqlDatabase::database(dbconname));
    if (! q.exec(QString("select %1 from %2 where %3 = %4")
           .arg("mcl_c_maquina")
           .arg("cas_mcl_mexcontrolelogin")
           .arg("mcl_n_codigo")
           .arg(request()["user_id"].toInt()))) {
        return onError(q.lastError().text());
    } 

    DEBUGME() << "query size" << q.size();
    if (q.size() < 1)
        return onError("User not logged in");

    q.next();
    DEBUGME()  << "query result" << q.value(0).toString();

    q.finish();

    QSqlDatabase::database(dbconname).close();
    QSqlDatabase::removeDatabase(dbconname);

    // success: user_logged_in
    (*response())["logged_in"] =  true;
    return onSuccess("User already logged in");
}
