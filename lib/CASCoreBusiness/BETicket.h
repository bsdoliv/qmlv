#ifndef BETICKET_H
#define BETICKET_H

#include <QString>
#include <QObject>

#include "CoreCommom/basebind.h"

namespace Model {

class BETicket: public BaseBind
{
private:
     int  intBloqueado ;
     QString strSaldo;
     QString strCode;
     QString  strMaquina;

public:
    BETicket();

    void SetBloqueado (const int &bloqueado);
    int Bloqueado () const;

    void SetSaldo(const QString &saldo);
    QString Saldo() const;

    void  SetCode(const QString &code);
    QString  Code() const;

    void  SetMaquina(const QString &maquina);
    QString Maquina() const;

    void bind(const QSqlRecord& record) ;
};

}

Q_DECLARE_METATYPE(QList<Model::BETicket>)

#endif // BETICKET_H
