#ifndef BEFECHARTICKET_H
#define BEFECHARTICKET_H

#include "CoreCommom/basebind.h"
#include "BEHistoricoOperacao.h"
#include "BETicket.h"
#include <QString>

namespace Model {
class BEFecharTicket: public BETicket
{
private:
    QString strEntrada;
    QString strSalida;
    QString strSaldoTotal;
    QString strFecha;
    QString strEntradasTicket;
    QString strEntradasDinheiro;
    QString strEntradasTicketCaixa;
    QString strEfectivo;
    QString strAposta;
    QString strResultado;
    QString strPromocoes;
    QString strCodeBonif;
    QString strDeducao1;
    QString strPremio;
    int     intDiaVencimento;
    int     intPromocao;
    int     intSave;
    int     intEncript;
    bool    blnAbertura;
    BEHistoricoOperacao objHistoricoOperacao;

public:
    BEFecharTicket();

    void  SetEntrada(const QString & entrada);
    QString  Entrada() const;
    void  SetSalida(const QString &salida);
    QString  Salida() const;
    void  SetSaldoTotal(const QString &saldoTotal);
    QString  SaldoTotal() const;
    void  SetFecha(const QString &fecha);
    QString  Fecha() const;
    void   SetEntradasTicket (const QString &entradasTicket);
    QString  EntradasTicket() const;
    void  SetEntradasDinheiro(const QString & entradasDinheiro);
    QString  EntradasDinheiro() const;
    void  SetEntradasTicketCaixa(const QString &EntradasTicketCaixa);
    QString  EntradasTicketCaixa() const;
    void  SetEfectivo(const QString &efectivo);
    QString  Efectivo() const;
    void  SetAposta(const QString &aposta);
    QString  Aposta() const;
    void  SetResultado(const QString &resultado);
    QString  Resultado() const;
    void  SetPromocoes(const QString &promocoes);
    QString  Promocoes() const;
    void  SetCodeBonif(const QString &codeBonif);
    QString  CodeBonif() const;
    void SetDeducao1(const  QString &deducao1);
    QString Deducao1() const;
    void SetPremio(const  QString &premio);
    QString Premio() const;
    void  SetDiaVencimento(const int &diavencimento);
    int  DiaVencimento() const;
    void  SetPromocao(const int &diavencimento);
    int  Promocao() const;
    void  SetSave(const int &save);
    int   Save() const;
    void  SetEncript(const int &encript);
    int   Encript() const;
    void SetAbertura(const bool &abertura);
    bool Abertura() const;
    void  SetHistoricoOperacao(const BEHistoricoOperacao &objHisOperacao);
    BEHistoricoOperacao HistoricoOperacao() const;
    void bind(const QSqlRecord& record);
};
} // Model

Q_DECLARE_METATYPE(QList<Model::BEFecharTicket>)
#endif // BEFECHARTICKET_H
