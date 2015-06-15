#ifndef DALTTICKET_H
#define DALTTICKET_H

#include "CASCoreBusiness/BEFecharticket.h"
#include "CASCoreBusiness/BEHistoricoOperacao.h"
#include "CASCoreBusiness/BENovoMovimento.h"
#include "CASCoreBusiness/BEObterexpiracaoticket.h"
#include "CASCoreBusiness/BETicket.h"
#include "CoreFatory/corefatory.h"
#include "DALHistoricoOperacao.h"

#include <QtSql/QtSql>

using namespace Fatory;
using namespace Model;

namespace DataAcessLayer {

class DALTicket
{
private :
    QString db;

public:
    DALTicket(const QString &bd);
    QList<BEObterExpiracaoTicket> obterExpiracaoTicket(const QVariantList& listparameter);
    QList<BENovoMovimento> NovoMovimento(const BENovoMovimento &objBeNovoMovimento);
    QList<BEFecharTicket> FecharTichet(const BEFecharTicket &objBeFecharTicket, QVariantList& out);
    bool VerificaDispoNumeroTicket(const QString &numTicket);
    QList<BETicket> VerificaNumeroTicket(const QString &numTicket);
    void CreateNewTicket(const BENovoMovimento &objBeNovoMovimento, QVariantList& out);
};

}
#endif // DALTTICKET_H
