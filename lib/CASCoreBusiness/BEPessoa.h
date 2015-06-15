#ifndef BEPessoa_H
#define BEPessoa_H

#include <QString>
#include <QObject>

#include "CoreCommom/basebind.h"

namespace Model {

class BEPessoa: public BaseBind {
public:
    int codigo;
    QString login;
    QString senha;
    QString tipoLogin;
    QString cpf;
    QString nome;
    QString apelido;
    QString endereco;
    QString numero;
    QString complemento;
    QString bairro;
    QString cidade;
    QString uf;
    QString cep;
    QString dataNascimento;
    QString sexo;
    QString estadoCivil;
    QString profissao;
    QString mail;
    QString dddResidencia;
    QString foneResidencia;
    QString dddCel;
    QString foneCel;
    QString ddrComercial;
    QString foneComercial;
    QString rg;
    QString clienteDesde;
    QString senhaDescod;
    int bloqueado;
    int numeroTentiva;
    bool senhaExpirada;
    bool expiraSenha;

public:
    BEPessoa();

    void SetCodigo(const int &codigo);

    void SetLogin(const QString &login);
    QString Login() const;

    void SetSenha(const QString &senha);
    QString Senha() const;

    void SetTipoLogin(const QString &tipologin);
    QString TipoLogin() const;

    void SetCPF(const QString &cpf);
    QString CPF() const;

    void SetNome(const QString &nome);
    QString Nome() const;

    void SetApelido(const QString &apelido);
    QString Apelido() const;

    void SetEndereco(const QString &endereco);
    QString Endereco() const;

    void Setnumero(const QString &numero);
    QString Numero() const;

    void SetComplemento(const QString &complemento);
    QString Complemento() const;

    void SetBairro(const QString &bairro);
    QString Bairro() const;

    void SetCidade(const QString &cidade);
    QString Cidade() const;

    void SetUF(const QString &uf);
    QString UF() const;

    void SetCep(const QString &cep);
    QString CEP() const;

    void Setdatanascimento(const QString &datanascimeto);
    QString DataNascimento() const;

    void SetSexo(const QString &sexo);
    QString Sexo() const;

    void SetEstadoCivil(const QString &estadocivil);
    QString EstadoCivil() const;

    void SetProfissao(const QString &profissao);
    QString Profissao() const;

    void SetMail(const QString & mail);
    QString Mail() const;

    void SetDDDResidencia(const QString &ddresidencia);
    QString DDDResidencia() const;

    void SetFoneResidencia(const QString &foneresidencia);
    QString FoneResidencia() const;

    void SetDDDCel(const QString &dddcel);
    QString DDDCel() const;

    void SetFoneCel(const QString &fonecel);
    QString FoneCel() const;

    void SetDDRComercial(const QString &ddrcomercial);
    QString DDRComercial() const;

    void SetFoneComercial(const QString &fonecomercial);
    QString FoneComercial() const;

    void SetRG(const QString &rg);
    QString RG() const;

    void SetClienteDesde(const QString &clientedesde);
    QString ClienteDesde() const;

    void SetSenhaDescod(const QString &senhadescod);
    QString SenhaDescod() const;


    void Setbloqueado(const int &bloqueado);
    int Bloqueado() const;

    void SetNumeroTentativa(const int &numerotentiva);
    int NumeroTentiva() const;

    void SetSenhaExpirada(const bool &senhaexpirada);
    bool SenhaExpirada() const;

    void SetExpiraSenha(const bool &expirasenha);
    bool ExpiraSenha() const;

    void bind(const QSqlRecord& record);
 };
}

Q_DECLARE_METATYPE(QList<Model::BEPessoa>)


#endif // BEPessoa_H
