#include "BETicket.h"

using namespace Model;

BETicket::BETicket()
{
}


void  BETicket::SetBloqueado (const int &bloqueado)
{
  this->intBloqueado = bloqueado;
}

int BETicket::Bloqueado () const
{
  return this->intBloqueado;
}

void  BETicket::SetSaldo(const QString &saldo)
{
   this->strSaldo = saldo;
}

QString  BETicket::Saldo() const
{
  return this->strSaldo;
}

void  BETicket::SetCode(const QString &code)
{
  this->strCode = code;
}

QString  BETicket::Code() const
{
  return this->strCode;
}

void  BETicket::SetMaquina(const QString &maquina)
{
  this->strMaquina = maquina;
}

QString  BETicket::Maquina() const
{
  return this->strMaquina;
}


void  BETicket::BETicket::bind(const QSqlRecord& record)
{

    SetBloqueado  ( record.value("bloqueado").toInt());  // comum a todo ticket
    SetSaldo ( record.value("saldo").toString()); // comum a todo ticket


}
