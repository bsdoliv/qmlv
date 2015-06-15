#include "BEPessoa.h"

using namespace Model;

BEPessoa::BEPessoa()
{
}

void BEPessoa::SetCodigo(const int &codigo)
{
  this->codigo = codigo;
}

#if 0
int BEPessoa::Codigo() const
{
   return this->codigo;
}
#endif

void BEPessoa::SetLogin(const QString &login)
{
  this->login = login;
}

QString BEPessoa::Login() const
{
  return this->login;
}

void BEPessoa::SetSenha(const QString &senha)
{
    this->senha = senha;
}

QString BEPessoa::Senha() const
{
  return this->senha;
}

void BEPessoa::SetTipoLogin(const QString &tipologin)
{
  this->tipoLogin  = tipologin;
}

QString BEPessoa::TipoLogin() const
{
 return this->tipoLogin;
}

void BEPessoa::SetCPF(const QString &cpf)
{
  this->cpf = cpf;
}

QString BEPessoa::CPF() const
{
 return this->cpf;
}

void BEPessoa::SetNome(const QString &nome)
{
  this->nome = nome;
}

QString BEPessoa::Nome() const
{
  return this->nome;
}

void BEPessoa::SetApelido(const QString &apelido)
{
  this->apelido = apelido;
}

QString BEPessoa::Apelido() const
{
  return this->apelido;
}

void BEPessoa::SetEndereco(const QString &endereco)
{
    this->endereco = endereco;
}

QString BEPessoa::Endereco() const
{
  return this->endereco;
}

void BEPessoa::Setnumero(const QString &numero)
{
    this->numero = numero;
}

QString BEPessoa::Numero() const
{
    return this->numero;
}

void BEPessoa::SetComplemento(const QString &complemento)
{
    this->complemento = complemento;
}

QString BEPessoa::Complemento() const
{
  return this->complemento;
}

void BEPessoa::SetBairro(const QString &bairro)
{
   this->bairro = bairro;
}

QString BEPessoa::Bairro() const
{
  return this->bairro;
}

void BEPessoa::SetCidade(const QString &cidade)
{
  this->cidade = cidade;
}

QString BEPessoa::Cidade() const
{
  return this->cidade;
}

void BEPessoa::SetUF(const QString &uf)
{
  this->uf = uf;
}

QString BEPessoa::UF() const
{
  return this->uf;
}

void BEPessoa::SetCep(const QString &cep)
{
  this->cep = cep;
}

QString BEPessoa::CEP() const
{
  return this->cep;
}

void BEPessoa::Setdatanascimento(const QString &datanascimeto)
{
  this->dataNascimento = datanascimeto;
}

QString BEPessoa::DataNascimento() const
{
  return this->dataNascimento;
}

void BEPessoa::SetSexo(const QString &sexo)
{
    this->sexo = sexo;
}

QString BEPessoa::Sexo() const
{
  return this->sexo;
}

void BEPessoa::SetEstadoCivil(const QString &estadocivil)
{
    this->estadoCivil = estadocivil;
}

QString BEPessoa::EstadoCivil() const
{
   return this->estadoCivil;
}

void BEPessoa::SetProfissao(const QString &profissao)
{
  this->profissao = profissao;
}

QString BEPessoa::Profissao() const
{
  return this->profissao;
}

void BEPessoa::SetMail(const QString & mail)
{
    this->mail = mail;
}

QString BEPessoa::Mail() const
{
  return this->mail;
}

void BEPessoa::SetDDDResidencia(const QString &ddresidencia)
{
  this->dddResidencia = ddresidencia;
}

QString BEPessoa::DDDResidencia() const
{
 return this->dddResidencia;
}

void BEPessoa::SetFoneResidencia(const QString &foneresidencia)
{
   this->foneResidencia = foneresidencia;
}

QString BEPessoa::FoneResidencia() const
{
  return this->foneResidencia;
}

void BEPessoa::SetDDDCel(const QString &dddcel)
{
  this->dddCel = dddcel;
}

QString BEPessoa::DDDCel() const
{
  return this->dddCel;
}

void BEPessoa::SetFoneCel(const QString &fonecel)
{
  this->foneCel = fonecel;
}

QString BEPessoa::FoneCel() const
{
  return this->foneCel;
}

void BEPessoa::SetDDRComercial(const QString &ddrcomercial)
{
    this->ddrComercial = ddrcomercial;
}

QString BEPessoa::DDRComercial() const
{
  return this->ddrComercial;
}

void BEPessoa::SetFoneComercial(const QString &fonecomercial)
{
  this->foneComercial = fonecomercial;
}

QString BEPessoa::FoneComercial() const
{
  return this->foneComercial;
}

void BEPessoa::SetRG(const QString &rg)
{
   this->rg = rg;
}

QString BEPessoa::RG() const
{
    return this->rg;
}

void BEPessoa::SetClienteDesde(const QString &clientedesde)
{
  this->clienteDesde = clientedesde;
}

QString BEPessoa::ClienteDesde() const
{
   return this->clienteDesde;
}

void BEPessoa::SetSenhaDescod(const QString &senhadescod)
{
  this->senhaDescod = senhadescod;
}

QString BEPessoa::SenhaDescod() const
{
   return this->senhaDescod;
}

void BEPessoa::Setbloqueado(const int &bloqueado)
{
   this->bloqueado = bloqueado;
}

int BEPessoa::Bloqueado() const
{
  return this->bloqueado;
}

void BEPessoa::SetNumeroTentativa(const int &numerotentiva)
{
  this->numeroTentiva = numerotentiva;
}

int BEPessoa::NumeroTentiva() const
{
    return this->numeroTentiva;
}

void BEPessoa::SetSenhaExpirada(const bool &senhaexpirada)
{
    this->senhaExpirada = senhaexpirada;
}

bool BEPessoa::SenhaExpirada() const
{
  return this->senhaExpirada;
}

void BEPessoa::SetExpiraSenha(const bool &expirasenha)
{
   this->expiraSenha = expirasenha;
}

bool BEPessoa::ExpiraSenha() const
{
  return this->expiraSenha;
}

void BEPessoa::bind(const QSqlRecord& record)
{
    SetCodigo(record.value("codigo").toInt());
    SetLogin(record.value("usuario").toString());
    SetSenha(record.value("senha").toString());
    SetTipoLogin(record.value("tipopessoa").toString());
    SetCPF(record.value("cpf").toString());
    SetNome(record.value("name").toString());
    SetApelido(record.value("nickname").toString());
    SetEndereco(record.value("street").toString());
    Setnumero(record.value("streetnum").toString());
    SetComplemento(record.value("complemento").toString());
    SetBairro(record.value("zona").toString());
    SetCidade(record.value("city").toString());
    SetUF(record.value("state").toString());
    SetCep(record.value("postalcode").toString());
    Setdatanascimento(record.value("birthday").toString());
    SetSexo(record.value("sex").toString());
    SetEstadoCivil(record.value("civilstate").toString());
    SetProfissao(record.value("profesion").toString());
    SetMail(record.value("email").toString());
    SetDDDResidencia(record.value("codtelefon").toString());
    SetFoneResidencia(record.value("telefon").toString());
    SetDDDCel(record.value("codtelcelular").toString());
    SetFoneCel(record.value("telcelular").toString());
    SetDDRComercial(record.value("codtelcomercial").toString());
    SetFoneComercial(record.value("telcomercial").toString());
    SetRG(record.value("rg").toString());
    SetClienteDesde(record.value("clientedesde").toString());
    Setbloqueado(record.value("bloqueado").toInt());
    SetNumeroTentativa(record.value("numerotentativa").toInt());
    SetSenhaExpirada(record.value("senhaexpirada").toBool());


}
