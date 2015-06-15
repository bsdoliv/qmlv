#ifndef DAOCLIENT_H
#define DAOCLIENT_H

#include <QList>
#include <QVariantList>
#include <QtSql/QtSql>

#include "CoreFatory/corefatory.h"
#include "CASCoreBusiness/beclient.h"

using namespace Fatory;

class DAOClient
{

private :
 QString db;
public:

    DAOClient(const QString &bd);

    QList<BeClient> getClient();

    void InsereCliente(const QVariantList& listparameter, QVariantList& out);
    void AtualizaCliente(const QVariantList& listparameter, QVariantList& out);
    void DeletaCliente(const QVariantList& listparameter, QVariantList& out);

};

#endif // DAOCLIENT_H
