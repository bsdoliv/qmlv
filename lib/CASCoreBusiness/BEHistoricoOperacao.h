#ifndef BEHISTORICOOPERACAO_H
#define BEHISTORICOOPERACAO_H

#include <QString>
#include <QDateTime>

#include "CoreCommom/basebind.h"

namespace Model{
class BEHistoricoOperacao: public BaseBind
{

private:

    QString   strCPF;
    QString   strDescOperacao;
    QString   strDescTabela;
    int       intCodigoTabela;
    QString   strCodigoGenerico;
    QString   dtInclusao;
    QString   strTextoGenerico;
    QString   strCartao;
    int       intCodFuncionario;
    QString   strFuncionario;
    QString   strCodTicket;
    QString   strCodCartao;
    QString   strIDTRansacao;
    QString   strMaquina;
    QString   strDataInicial;
    QString   strDataFinal;
    int       intCodigoOperacao;
    int        intCodigoUsuario;
    QString    strValorTicket;
    QDateTime  dtDataInicial;
    QDateTime  dtDataFinal;
    int        intCodFechamento;
    QString    strCupomB;
    QString    strEfectivo;

    //ESTA ROTINA NÃO TEM NECESSIDA DE BIND POIS É UTILIZADA SOMENTE PARA INSERÇÃO DE HISTÓRICO OPERACIONAL
    void bind(const QSqlRecord& record);

public:
    BEHistoricoOperacao();

    void SetCPF(const QString &cpf);
    QString CPF() const ;

    void SetDescOperacao(const QString &descOperacao);
    QString DescOperacao() const ;

    void SetDescTabela(const QString &descTabela);
    QString DescTabela() const;

    void SetCodigoTabela(const int &codigoTabela);
    int CodigoTabela() const;

    void SetCodigoGenerico(const QString &codigoGenerico);
    QString CodigoGenerico() const;

    void SetDatatInclusao(const QString &datatInclusao);
    QString DatatInclusao() const;

    void SetTextoGenerico(const QString &textoGenerico);
    QString TextoGenerico() const;

    void SetCartao(const QString &cartao);
    QString Cartao() const;

    void SetCodFuncionario(const int &codFuncionario);
    int CodFuncionario() const;

    void SetCodTicket(const QString &codTicket);
    QString CodTicket() const;

    void SetCodigoCartao(const QString &codigoCartao);
    QString CodigoCartao() const;

    void SetIDTRansacao(const QString &idTRansacao);
    QString IDTRansacao() const;

    void SetMaquina(const QString &maquina);
    QString Maquina() const;

    void SetDataInicial(const QString &dataInicial);
    QString DataInicial() const;

    void SetDataFinal(const QString &DataFinal);
    QString DataFinal() const;

    void SetCodigoOperacao(const int &codigoOperacao);
    int CodigoOperacao() const;

    void SetCodigoUsuario(const int &codigoUsuario);
    int CodigoUsuario() const;

    void SetValorTicket(const QString &valorticket);
    QString ValorTicket() const;

    void SetdDataInicial(const QDateTime &dDataInicial);
    QDateTime dDataInicial() const;

    void SetdtDataFinal(const QDateTime &dataFinal);
    QDateTime dDataFinal() const;

    void SetCodigoFechamento(const int &codigoFechamento);
    int CodigoFechamento() const;

    void SetCupomB(const QString &cupomB);
    QString CupomB() const;

    void SetEfectivo(const QString &efectivo);
    QString Efectivo() const;



  };
}

Q_DECLARE_METATYPE(QList<Model::BEHistoricoOperacao>)

#endif // BEHISTORICOOPERACAO_H
