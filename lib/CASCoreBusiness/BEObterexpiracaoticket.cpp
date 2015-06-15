#include "BEObterexpiracaoticket.h"


using namespace Model;

BEObterExpiracaoTicket::BEObterExpiracaoTicket()
{
}


void  BEObterExpiracaoTicket::SetCodigoExpiracao(const int &codigoExpiracao)
{
   this->intCodigoExpiracao = codigoExpiracao;
}

int BEObterExpiracaoTicket::CodigoExpiracao() const
{
   return this->intCodigoExpiracao;
}

void  BEObterExpiracaoTicket::SetValor(const QString &valor)
{
  this->strValor = valor;
}

QString  BEObterExpiracaoTicket::Valor() const
{
  return this->strValor;
}

void  BEObterExpiracaoTicket::SetDias(const int &dias)
{
  this->intDias = dias;
}

int BEObterExpiracaoTicket::Dias() const
{
  return this->intDias;
}

void  BEObterExpiracaoTicket::SetStatus(const int &status)
{
  this->intStatus = status;
}

int BEObterExpiracaoTicket::Status() const
{
  return this->intStatus;
}


void  BEObterExpiracaoTicket::SetDataVigencia(const QString &dataVigencia)
{
  this->strDataVigencia = dataVigencia;
}

QString  BEObterExpiracaoTicket::DataVigencia() const
{
  return this->strDataVigencia;
}


void  BEObterExpiracaoTicket::SetSelecionar(const bool &selecionar)
{
   this->blnSelecionar = selecionar;
}

bool  BEObterExpiracaoTicket::Selecionar() const
{
  return this->blnSelecionar;
}

void  BEObterExpiracaoTicket::SetEnviarEmailFechamento(const bool &enviarEmailFechamento)
{
  this->blnEnviarEmailFechamento =enviarEmailFechamento;
}

bool  BEObterExpiracaoTicket::EnviarEmailFechamento() const
{
  return this->blnEnviarEmailFechamento;
}

void  BEObterExpiracaoTicket::SetContabilParcial(const bool &contabilParcial)
{
  this->blnContabilParcial =contabilParcial;
}

bool  BEObterExpiracaoTicket::ContabilParcial() const
{
  return this->blnContabilParcial;
}


void  BEObterExpiracaoTicket::SetCompAddCredito(const bool &compAddCredito)
{
   this->blnCompAddCredito = compAddCredito;
}

bool  BEObterExpiracaoTicket::CompAddCredito() const
{
  return this->blnCompAddCredito;
}


void  BEObterExpiracaoTicket::SetNumerosintinteiros(const bool &numerosintinteiros)
{
  this->blnNumerosintinteiros = numerosintinteiros;
}

bool  BEObterExpiracaoTicket::Numerosintinteiros() const
{
  return this->blnNumerosintinteiros;
}

void  BEObterExpiracaoTicket::SetFecharTicketPromo(const bool &fecharTicketPromo)
{
  this->blnFecharTicketPromo = fecharTicketPromo;
}

bool  BEObterExpiracaoTicket::FecharTicketPromo() const
{
  return this->blnFecharTicketPromo;
}

void  BEObterExpiracaoTicket::SetEnviaEmailContabil(const bool &enviaEmailContabil)
{
  this->blnEnviaEmailContabil = enviaEmailContabil;
}

bool  BEObterExpiracaoTicket::EnviaEmailContabil() const
{
  return this->blnEnviaEmailContabil;
}

void  BEObterExpiracaoTicket::SetEnviaPDFContabil(const bool &enviaPDFContabil)
{
  this->blnEnviaPDFContabil = enviaPDFContabil;
}

bool  BEObterExpiracaoTicket::EnviaPDFContabil() const
{
  return this->blnEnviaPDFContabil;
}

void  BEObterExpiracaoTicket::SetEnviaXMLContabil(const bool &enviaXMLContabil)
{
  this->blnEnviaXMLContabil = enviaXMLContabil;
}

bool  BEObterExpiracaoTicket::EnviaXMLContabil() const
{
  return this->blnEnviaXMLContabil;
}

void  BEObterExpiracaoTicket::SetDiasExclusaoContabil(const int &diasExclusaoContabil)
{
  this->intDiasExclusaoContabil = diasExclusaoContabil;
}

int BEObterExpiracaoTicket::DiasExclusaoContabil() const
{
  return this->intDiasExclusaoContabil;
}

void  BEObterExpiracaoTicket::SetMaximoJogadores(const int &maximoJogadores)
{
  this->intMaximoJogadores = maximoJogadores;
}

int BEObterExpiracaoTicket::MaximoJogadores() const
{
  return this->intMaximoJogadores;
}


void  BEObterExpiracaoTicket::SetEnviaEmailPagManual(const bool &enviaEmailPagManual)
{
  this->blnEnviaEmailPagManual = enviaEmailPagManual;
}

bool  BEObterExpiracaoTicket::EnviaEmailPagManual() const
{
  return this->blnEnviaEmailPagManual;
}

void  BEObterExpiracaoTicket::SetEnviaContabilMod(const bool &enviaContabilMod)
{
  this->blnEnviaContabilMod = enviaContabilMod;
}

bool  BEObterExpiracaoTicket::EnviaContabilMod() const
{
  return this->blnEnviaContabilMod;
}

void  BEObterExpiracaoTicket::SetEnviaContabilFab(const bool &enviaContabilFab)
{
  this->blnEnviaContabilFab = enviaContabilFab;
}

bool  BEObterExpiracaoTicket::EnviaContabilFab() const
{
  return this->blnEnviaContabilFab;
}

void  BEObterExpiracaoTicket::SetFechamentoConsolidado(const bool &fechamentoConsolidado)
{
  this->blnFechamentoConsolidado = fechamentoConsolidado;
}

bool  BEObterExpiracaoTicket::FechamentoConsolidado() const
{
  return this->blnFechamentoConsolidado;
}

void  BEObterExpiracaoTicket::SetEnviaPDFPagManual(const bool &enviaPDFPagManual)
{
  this->blnEnviaPDFPagManual = enviaPDFPagManual;
}

bool  BEObterExpiracaoTicket::EnviaPDFPagManual() const
{
  return this->blnEnviaPDFPagManual;
}

void  BEObterExpiracaoTicket::SetEnviaXMLPagManual(const bool &enviaXMLPagManual)
{
  this->blnEnviaXMLPagManual = enviaXMLPagManual;
}

bool  BEObterExpiracaoTicket::EnviaXMLPagManual() const
{
  return this->blnEnviaXMLPagManual;
}

void  BEObterExpiracaoTicket::SetCalculaVendas(const bool &calculaVendas)
{
  this->blnCalculaVendas = calculaVendas;
}

bool  BEObterExpiracaoTicket::CalculaVendas() const
{
  return this->blnCalculaVendas;
}

void  BEObterExpiracaoTicket::SetValoresNegativos(const bool &valoresNegativos)
{
   this->blnValoresNegativos = valoresNegativos;
}

bool  BEObterExpiracaoTicket::ValoresNegativos() const
{
  return this->blnValoresNegativos;
}

void  BEObterExpiracaoTicket::SetHora(const bool &hora)
{
  this->blnHora = hora;
}

bool BEObterExpiracaoTicket::Hora() const
{
  return this->blnHora;
}

void  BEObterExpiracaoTicket::SethoraAbertura(const QString &horaAbertura)
{
  this->strhoraAbertura = horaAbertura;
}

QString  BEObterExpiracaoTicket::horaAbertura() const
{
  return this->strhoraAbertura;
}

void  BEObterExpiracaoTicket::Sethorafechamento(const QString &horafechamento)
{
  this->strhorafechamento = horafechamento;
}

QString  BEObterExpiracaoTicket::horafechamento() const
{
  return   this->strhorafechamento;
}

void  BEObterExpiracaoTicket::Setenceramentoautomatico (const bool &enceramentoautomatico)
{
  this->blnenceramentoautomatico = enceramentoautomatico;
}

bool  BEObterExpiracaoTicket::enceramentoautomatico () const
{
  return this->blnenceramentoautomatico;
}



void BEObterExpiracaoTicket::bind(const QSqlRecord& record)
{

    SetCodigoExpiracao (record.value("CodigoExpiracao").toInt());
    SetValor ( record.value("valormaxticket").toString());
    SetDias ( record.value("diasprazoticket").toInt());
    SetStatus ( record.value("status1").toInt());
    SetDataVigencia ( record.value("datavigencia").toString());
    SetSelecionar ( record.value("impcompcumpomb").toBool());
    SetEnviarEmailFechamento ( record.value("enviaremailcierredia").toBool());
    SetContabilParcial ( record.value("contabilparcial").toBool());
    SetCompAddCredito ( record.value("SetCompAddCredito").toBool());
    SetNumerosintinteiros ( record.value("operanuminteiro").toBool());
    SetFecharTicketPromo ( record.value("fecharticketpromo").toBool());
    SetEnviaEmailContabil ( record.value("emailcontfechamento").toBool());
    SetEnviaPDFContabil ( record.value("enviapdfcontabil").toBool());
    SetEnviaXMLContabil ( record.value("enviaxmlcontabil").toBool());
    SetDiasExclusaoContabil ( record.value("diascontabilex").toInt());
    SetMaximoJogadores ( record.value("MaximoJogadores").toInt());
    SetEnviaEmailPagManual ( record.value("enviarpagmanualfechamento").toBool());
    SetEnviaContabilMod ( record.value("EnviaContabilMod").toBool());
    SetEnviaContabilFab ( record.value("enviarcontfab").toBool());
    SetFechamentoConsolidado ( record.value("FechamentoConsolidado").toBool());
    SetEnviaPDFPagManual ( record.value("enviarpdfpagmanual").toBool());
    SetEnviaXMLPagManual ( record.value("enviarxmlpagmanual").toBool());
    SetCalculaVendas ( record.value("CalculaVendas").toBool());
    SetValoresNegativos ( record.value("ValoresNegativos").toBool());
    SethoraAbertura ( record.value("HoraAbertura").toString());
    Sethorafechamento ( record.value("HoraAbertura").toString());
    Setenceramentoautomatico  ( record.value("Isencerraautomatico").toBool());
}
