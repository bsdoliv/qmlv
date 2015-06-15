#ifndef BETICKET_H
#define BETICKET_H
#include <QString>
#include <QList>

#include <QtSql/QtSql>
#include <basebind.h>
#include <QMetaTypeId>
#include <QMetaType>


class BeTicket: public BaseBind {


public:
    BeTicket();

    void setIdTicket(int idTicket);
    int getIdTicket() const;

    void setValorTicket(QString valor);
    QString getValorTicket() const;

    QString retornaAlgo();

    QVariant  bind(QString comand);


private:
    int IDticket;
    QString valorTicket;

};

Q_DECLARE_METATYPE(QList<BeTicket>)

#endif // BETICKET_H
