#include "DAOPessoa.h"

using namespace DataAcessLayer;

DAOPessoa::DAOPessoa(const QString &bd)
{
    dbconname = bd;
}

QList<BEPessoa> 
DAOPessoa::getPessoa(const QVariantList &listparameter, QVariantList& out)
{
   return  GetListbd<BEPessoa>(dbconname,
                               "p_cas_l_mexconsultaclientecontexto",
                               listparameter, out);
}

QList<BEPessoa> 
DAOPessoa::getPessoa(const BEPessoa& objPessoa, QVariantList& out)
{
    QVariantList lisparameter;
    lisparameter << objPessoa.Login()
                 << objPessoa.ExpiraSenha()
                 << objPessoa.Senha()
                 << objPessoa.SenhaDescod();

    return getPessoa(lisparameter, out);
}

void 
DAOPessoa::controleUsuario(const QVariantList &listparameter,
                           QVariantList& out)
{
    CoreFatory::ExecuteNonQuery(dbconname, "p_cas_l_mexcontrolelogin",
                                listparameter, out);
}

void DAOPessoa::AtualizaPessoa(const QVariantList &listparameter, QVariantList& out)
{
    CoreFatory::ExecuteNonQuery(dbconname,"",listparameter, out);
}

void 
DAOPessoa::manageLogin(const QVariantList &listparameter, QVariantList& out)
{
    CoreFatory::ExecuteNonQuery(dbconname, 
                                "p_cas_l_gerencialoginterminal",
                                listparameter, out);
}

void DAOPessoa::DeletaPessoa(const QVariantList &listparameter, QVariantList& out)
{
    CoreFatory::ExecuteNonQuery(dbconname,"",listparameter, out);
}

void
DAOPessoa::checkLogin(const QVariantList &listparameter, QVariantList& out)
{
    CoreFatory::ExecuteNonQuery(dbconname,"p_cas_l_consultarlogin",
                                listparameter, out);
}
