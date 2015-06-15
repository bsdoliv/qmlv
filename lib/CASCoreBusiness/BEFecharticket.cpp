#include "BEFecharticket.h"

using namespace Model;

BEFecharTicket::BEFecharTicket()
{
}

void  BEFecharTicket::SetEntrada(const QString & entrada)
{
  this->strEntrada = entrada;
}
QString  BEFecharTicket::Entrada() const
{
  return this->strEntrada;
}

void  BEFecharTicket::SetSalida(const QString &salida)
{
   this->strSalida = salida;
}
QString  BEFecharTicket::Salida() const
{
  return this->strSalida;
}

void  BEFecharTicket::SetSaldoTotal(const QString &saldoTotal)
{
   this->strSaldoTotal = saldoTotal;
}

QString  BEFecharTicket::SaldoTotal() const
{
  return this->strSaldoTotal;
}

void  BEFecharTicket::SetFecha(const QString &fecha)
{
   this->strFecha = fecha;
}
QString  BEFecharTicket::Fecha() const
{
  return  this->strFecha;
}

void  BEFecharTicket:: SetEntradasTicket (const QString &entradasTicket)
{
  this->strEntradasTicket = entradasTicket;
}

QString  BEFecharTicket::EntradasTicket() const
{
  return this->strEntradasTicket;
}

void  BEFecharTicket::SetEntradasDinheiro(const QString & entradasDinheiro)
{
   this->strEntradasDinheiro = entradasDinheiro;
}

QString  BEFecharTicket::EntradasDinheiro() const
{
  return this->strEntradasDinheiro;
}

void  BEFecharTicket::SetEntradasTicketCaixa(const QString &EntradasTicketCaixa)
{
  this->strEntradasTicketCaixa = EntradasTicketCaixa;
}

QString  BEFecharTicket::EntradasTicketCaixa() const
{
  return this->strEntradasTicketCaixa;
}


void  BEFecharTicket::SetEfectivo(const QString &efectivo)
{
    this->strEfectivo = efectivo;
}

QString  BEFecharTicket::Efectivo() const
{
  return this->strEfectivo;
}


void  BEFecharTicket::SetAposta(const QString &aposta)
{
  this->strAposta = aposta;
}

QString  BEFecharTicket::Aposta() const
{
  return this->strAposta;
}

void  BEFecharTicket::SetResultado(const QString &resultado)
{
  this->strResultado =resultado;
}

QString  BEFecharTicket::Resultado() const
{
  return this->strResultado;
}

void  BEFecharTicket::SetPromocoes(const QString &promocoes)
{
  this->strPromocoes = promocoes;
}

QString  BEFecharTicket::Promocoes() const
{
  return this->strPromocoes;
}

void  BEFecharTicket::SetCodeBonif(const QString &codeBonif)
{
  this->strCodeBonif = codeBonif;
}
QString  BEFecharTicket::CodeBonif() const
{
  return this->strCodeBonif;
}

void BEFecharTicket::SetDeducao1(const  QString &deducao1)
{
  this->strDeducao1 = deducao1;
}

QString BEFecharTicket::Deducao1() const
{
  return strDeducao1;
}

void BEFecharTicket::SetPremio(const  QString &premio)
{
  this->strPremio = premio;
}

QString BEFecharTicket::Premio() const
{
  return strPremio;
}


void  BEFecharTicket::SetDiaVencimento(const int &diavencimento)
{
   this->intDiaVencimento = diavencimento;
}
int  BEFecharTicket::DiaVencimento() const
{
  return this->intDiaVencimento;
}

void  BEFecharTicket::SetPromocao(const int &diavencimento)
{
   this->intPromocao = diavencimento;
}

int  BEFecharTicket::Promocao() const
{
  return this->intPromocao;
}

void  BEFecharTicket::SetSave(const int &save)
{
   this->intSave = save;
}

int BEFecharTicket::Save() const
{
  return this->intSave;
}

void BEFecharTicket::SetAbertura(const bool &abertura)
{
   this->blnAbertura = abertura;
}

void  BEFecharTicket::SetEncript(const int &encript)
{
   this->intEncript = encript;
}

int BEFecharTicket::Encript() const
{
  return this->intEncript;
}

bool BEFecharTicket::Abertura() const
{
  return this->blnAbertura;
}


void  BEFecharTicket::SetHistoricoOperacao(const BEHistoricoOperacao &objHisOperacao)
{
   this->objHistoricoOperacao = objHisOperacao;
}

BEHistoricoOperacao 
BEFecharTicket::HistoricoOperacao() const
{
  return this->objHistoricoOperacao;
}


void BEFecharTicket::bind(const QSqlRecord& record)
{
    SetEntrada(record.value("entrada").toString());
    SetSalida(record.value("salida").toString());
    SetSaldoTotal(record.value("saldototal").toString());
    SetFecha(record.value("fecha").toString());
    SetEntradasTicket(record.value("entradaticket").toString());
    SetEntradasDinheiro(record.value("entradadinheiro").toString());
    SetEntradasTicketCaixa(record.value("entradaticketcaixa").toString());
    SetEfectivo(record.value("efectivo").toString());
    SetAposta(record.value("aposta").toString());
    SetResultado(record.value("id").toString());
    SetPromocoes(record.value("bonificacao").toString());
    SetDiaVencimento(record.value("dias").toInt());
    SetPromocao(record.value("promocao").toInt());
    SetPremio(record.value("premio").toString());
    SetDeducao1(record.value("deducao1").toString());
}
