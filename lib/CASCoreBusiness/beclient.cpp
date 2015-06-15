#include "beclient.h"

BeClient::BeClient()
{

}


void BeClient::setIdCliente(int id)
{
    this->idcliente = id;
}

int BeClient::getIdCliente() const
{
    return this->idcliente;
}

void BeClient::setNomeCliente(QString nome)
{
    this->NomeCliente = nome;
}

QString BeClient::getNomeCliente() const
{
    return this->NomeCliente;
}

void BeClient::setcodCliente(int id)
{
    this->codcliente = id;
}

int BeClient::getcodCliente() const
{
  return this->codcliente;
}


void BeClient::bind(const QSqlRecord& record)
{
    setIdCliente(record.value("idCliente").toInt());
    setNomeCliente(record.value("nome").toString());
    setcodCliente(record.value("codProduto").toInt());
}
