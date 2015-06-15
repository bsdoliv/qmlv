#include "BENovoMovimento.h"

using namespace Model;

BENovoMovimento::BENovoMovimento()
{
}

void  BENovoMovimento::SetDiaVencimento(const int &diavencimento)
{
   this->intDiaVencimento = diavencimento;
}

int BENovoMovimento:: BENovoMovimento::DiaVencimento() const
{
  return this->intDiaVencimento;
}

void  BENovoMovimento::SetPromocoes(const QString &promocoes)
{
  this->strPromocoes = promocoes;
}

QString  BENovoMovimento::Promocoes() const
{
  return this->strPromocoes;
}

void BENovoMovimento::setFecha(const QDate &fecha)
{
    strFecha = fecha.toString("dd/MM/yyyy");
}

void  BENovoMovimento::SetFecha(const QString &fecha)
{
   this->strFecha = fecha;
}

QString  BENovoMovimento::Fecha() const
{
  return  this->strFecha;
}


void  BENovoMovimento::SetEntrada(const QString & entrada)
{
  this->strEntrada = entrada;
}
QString  BENovoMovimento::Entrada() const
{
  return this->strEntrada;
}


void  BENovoMovimento::SetMaxEntrada(const QString &maxEntrada)
{
     this->strMaxEntrada = maxEntrada;
}

QString  BENovoMovimento::MaxEntrada() const
{
  return this->strMaxEntrada;
}

void  BENovoMovimento::SetTipoMov(const int &tipoMov)
{
  this->intTipoMov = tipoMov;
}

int BENovoMovimento::TipoMov() const
{
  return this->intTipoMov;
}


void  BENovoMovimento::SetHistoricoOperacao(const BEHistoricoOperacao &objHisOperacao)
{
   this->objHistoricoOperacao = objHisOperacao;
}

void  BENovoMovimento::SetEncript(const int &encript)
{
   this->intEncript = encript;
}

int BENovoMovimento::Encript() const
{
  return this->intEncript;
}

BEHistoricoOperacao BENovoMovimento::HistoricoOperacao() const
{
  return this->objHistoricoOperacao;
}

void BENovoMovimento::bind(const QSqlRecord& record)
{
    SetSaldo(record.value("totalentrada").toString());
    SetDiaVencimento(record.value("dias").toInt());
   // SetPromocoes(record.value("bonificacao").toString());
    SetFecha(record.value("datageracao").toString());

}
