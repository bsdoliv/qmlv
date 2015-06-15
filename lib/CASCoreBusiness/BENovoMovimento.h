#ifndef BENOVOMOVIMENTO_H
#define BENOVOMOVIMENTO_H

#include <QString>

#include "CASCoreBusiness/BEHistoricoOperacao.h"
#include "CASCoreBusiness/BETicket.h"
#include "CoreCommom/basebind.h"

class QDate;

namespace Model{

class BENovoMovimento:  public BETicket
{

private:
    int  intDiaVencimento;
    QString strPromocoes;
    QString strFecha;
    QString strEntrada;
    QString strMaxEntrada;
    int intTipoMov;
    int    intEncript;
    BEHistoricoOperacao objHistoricoOperacao;

public:
    BENovoMovimento();

    void  SetDiaVencimento(const int &diavencimento);
    int  DiaVencimento() const;
    void  SetPromocoes(const QString &promocoes);
    QString  Promocoes() const;
    void  SetFecha(const QString &fecha);
    QString  Fecha() const;
    void setFecha(const QDate &fecha);
    void  SetEntrada(const QString & entrada);
    QString  Entrada() const;
    void  SetMaxEntrada(const QString &maxEntrada);
    QString  MaxEntrada() const;
    void  SetTipoMov(const int &tipoMov);
    int TipoMov() const;
    void  SetEncript(const int &encript);
    int Encript() const;
    void  SetHistoricoOperacao(const BEHistoricoOperacao &objHisOperacao);
    BEHistoricoOperacao  HistoricoOperacao() const;

    void bind(const QSqlRecord& record);
};

}

Q_DECLARE_METATYPE(QList<Model::BENovoMovimento>)

#endif // BENOVOMOVIMENTO_H
