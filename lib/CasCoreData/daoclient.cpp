#include "daoclient.h"

DAOClient::DAOClient(const QString &bd)
{
  this->db = bd;
}

QList<BeClient> DAOClient::getClient()
{
    return GetListbd<BeClient>(db,"listClient");
}

void DAOClient::InsereCliente(const QVariantList& listparameter, QVariantList& out)
{
     CoreFatory::ExecuteNonQuery(db,"InsereCliente",listparameter, out);;
}

void DAOClient::AtualizaCliente(const QVariantList& listparameter, QVariantList& out)
{
     CoreFatory::ExecuteNonQuery(db,"",listparameter, out);;
}

void DAOClient::DeletaCliente(const QVariantList& listparameter, QVariantList& out)
{
    CoreFatory::ExecuteNonQuery(db,"",listparameter, out);;
}
