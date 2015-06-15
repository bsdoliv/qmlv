#ifndef DALHISTORICOOPERACAO_H
#define DALHISTORICOOPERACAO_H

#include "CASCoreBusiness/BEHistoricoOperacao.h"
#include "CoreFatory/corefatory.h"

#include <QList>
#include <QtSql/QtSql>

using namespace Fatory;
using namespace Model;

namespace DataAcessLayer{

class DALHistoricoOperacao
{
private :
    QString db;

public:
    DALHistoricoOperacao(const QString &bd);
    void ConfirmaHistorico(const BEHistoricoOperacao &objHistoricoOperacao);

};

}

#endif // DALHISTORICOOPERACAO_H
