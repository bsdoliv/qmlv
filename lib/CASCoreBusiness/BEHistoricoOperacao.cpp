#include "BEHistoricoOperacao.h"

using namespace Model;

BEHistoricoOperacao::BEHistoricoOperacao()
{
}

void BEHistoricoOperacao::SetCPF(const QString &cpf)
{
  this->strCPF = cpf;
}

QString BEHistoricoOperacao::CPF() const
{
  return this->strCPF;
}

void BEHistoricoOperacao::SetDescOperacao(const QString &descOperacao)
{
     this->strDescOperacao = descOperacao;
}

QString BEHistoricoOperacao::DescOperacao() const
{
  return this->strDescOperacao;
}

void BEHistoricoOperacao::SetDescTabela(const QString &descTabela)
{
   this->strDescTabela = descTabela;
}

QString BEHistoricoOperacao::DescTabela() const
{
   return this->strDescTabela;
}

void BEHistoricoOperacao::SetCodigoTabela(const int &codigoTabela)
{
   this->intCodigoTabela = codigoTabela;
}

int BEHistoricoOperacao::CodigoTabela() const
{
  return this->intCodigoTabela;
}

void BEHistoricoOperacao::SetCodigoGenerico(const QString&codigoGenerico)
{
   this->strCodigoGenerico = codigoGenerico;
}

QString BEHistoricoOperacao::CodigoGenerico() const
{
  return this->strCodigoGenerico;
}

void BEHistoricoOperacao::SetDatatInclusao(const QString &datatInclusao)
{
     this->dtInclusao = datatInclusao;
}

QString BEHistoricoOperacao::DatatInclusao() const
{
  return this->dtInclusao;
}

void BEHistoricoOperacao::SetTextoGenerico(const QString&textoGenerico)
{
 this->strTextoGenerico = textoGenerico;
}

QString BEHistoricoOperacao::TextoGenerico() const
{
 return this->strTextoGenerico ;
}

void BEHistoricoOperacao::SetCartao(const QString&cartao)
{
  this->strCartao = cartao;
}

QString BEHistoricoOperacao::Cartao() const
{
 return this->strCartao;
}

void BEHistoricoOperacao::SetCodFuncionario(const int &codFuncionario)
{
   this->intCodFuncionario = codFuncionario;
}
int BEHistoricoOperacao::CodFuncionario() const
{
  return this->intCodFuncionario;
}

void BEHistoricoOperacao::SetCodTicket(const QString&codTicket)
{
  this->strCodTicket = codTicket;
}

QString BEHistoricoOperacao::CodTicket() const
{
 return this->strCodTicket;
}

void BEHistoricoOperacao::SetCodigoCartao(const QString&codigoCartao)
{
  this->strCodCartao = codigoCartao;
}

QString BEHistoricoOperacao::CodigoCartao() const
{
  return this->strCodCartao;
}

void BEHistoricoOperacao::SetIDTRansacao(const QString&idTRansacao)
{
  this->strIDTRansacao = idTRansacao;
}

QString BEHistoricoOperacao::IDTRansacao() const
{
  return this->strIDTRansacao;
}

void BEHistoricoOperacao::SetMaquina(const QString&maquina)
{
  this->strMaquina = maquina;
}

QString BEHistoricoOperacao::Maquina() const
{
  return this->strMaquina;
}

void BEHistoricoOperacao::SetDataInicial(const QString&dataInicial)
{
  this->strDataInicial = dataInicial;
}

QString BEHistoricoOperacao::DataInicial() const
{
 return this->strDataInicial;
}

void BEHistoricoOperacao::SetDataFinal(const QString&DataFinal)
{
  this->strDataFinal = DataFinal;
}

QString BEHistoricoOperacao::DataFinal() const
{
  return this->strDataFinal;
}

void BEHistoricoOperacao::SetCodigoOperacao(const int &codigoOperacao)
{
  this->intCodigoOperacao = codigoOperacao;
}

int BEHistoricoOperacao::CodigoOperacao() const
{
  return this->intCodigoOperacao;
}

void BEHistoricoOperacao::SetCodigoUsuario(const int &codigoUsuario)
{
  this->intCodigoUsuario = codigoUsuario;
}

int BEHistoricoOperacao::CodigoUsuario() const
{
  return this->intCodigoUsuario;
}

void BEHistoricoOperacao::SetValorTicket(const QString &valorticket)
{
  this->strValorTicket = valorticket;
}

QString BEHistoricoOperacao::ValorTicket() const
{
  return this->strValorTicket;
}


void BEHistoricoOperacao::SetdDataInicial(const QDateTime&dDataInicial)
{
  this->dtDataInicial = dDataInicial;
}

QDateTime BEHistoricoOperacao::dDataInicial() const
{
  return this->dtDataInicial;
}

void BEHistoricoOperacao::SetdtDataFinal(const QDateTime&dataFinal)
{
  this->dtDataFinal =  dataFinal;
}
QDateTime BEHistoricoOperacao::dDataFinal() const
{
  return this->dtDataFinal;
}

void BEHistoricoOperacao::SetCodigoFechamento(const int &codigoFechamento)
{
  this->intCodFechamento =  codigoFechamento;
}

int BEHistoricoOperacao::CodigoFechamento() const
{
    return this->intCodFechamento;
}

void BEHistoricoOperacao::SetCupomB(const QString&cupomB)
{
   this->strCupomB = cupomB;
}

QString BEHistoricoOperacao::CupomB() const
{
  return this->strCupomB;
}

void BEHistoricoOperacao::SetEfectivo(const QString&efectivo)
{
   this->strEfectivo =  efectivo;
}

QString BEHistoricoOperacao::Efectivo() const
{
  return this->strEfectivo;
}




void BEHistoricoOperacao::bind(const QSqlRecord& record)
{
    Q_UNUSED(record)
}
