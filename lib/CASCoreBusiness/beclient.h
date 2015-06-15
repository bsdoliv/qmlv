#ifndef BECLIENT_H
#define BECLIENT_H

#include <QString>
#include <QtSql/QtSql>
#include <QMetaType>

#include "CoreCommom/basebind.h"
#include "CoreCommom/sqlexception.h"


class BeClient: public BaseBind
{
private:
    int idcliente;
    QString NomeCliente;
     int codcliente;


public:
    BeClient();



    void setIdCliente(int id);
    int getIdCliente() const;

    void setNomeCliente(QString nome);
    QString getNomeCliente() const;

    void setcodCliente(int id);
    int getcodCliente() const;


    void bind(const QSqlRecord& record);

};

Q_DECLARE_METATYPE(QList<BeClient>)

#endif // BECLIENT_H
