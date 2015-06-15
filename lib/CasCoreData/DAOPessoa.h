#ifndef DAOPESSOA_H
#define DAOPESSOA_H

#include <QList>
#include <QtSql/QtSql>

#include "CASCoreBusiness/BEPessoa.h"
#include "CoreFatory/corefatory.h"

using namespace Fatory;
using namespace Model;

namespace DataAcessLayer {
    class DAOPessoa {
    private :
    QString dbconname;

    public:
        DAOPessoa(const QString &bd);

        QList<BEPessoa> getPessoa(const QVariantList& listparameter, QVariantList& out);
        QList<BEPessoa> getPessoa(const BEPessoa& objPessoa, QVariantList& out);

        void controleUsuario(const QVariantList& listparameter, QVariantList& out);
        void AtualizaPessoa(const QVariantList& listparameter, QVariantList& out);
        void DeletaPessoa(const QVariantList& listparameter, QVariantList& out);
        void checkLogin(const QVariantList &listparameter, QVariantList& out);
        void manageLogin(const QVariantList &listparameter, QVariantList& out);
    };
}

#endif // DAOPESSOA_H
