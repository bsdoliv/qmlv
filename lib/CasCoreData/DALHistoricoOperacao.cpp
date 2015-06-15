#include "DALHistoricoOperacao.h"

using namespace DataAcessLayer;

DALHistoricoOperacao::DALHistoricoOperacao(const QString &bd)
{
    this->db = bd;
}


void DALHistoricoOperacao::ConfirmaHistorico(const BEHistoricoOperacao& objHistoricoOperacao)
{
    QVariantList listparameter;
    listparameter << objHistoricoOperacao.CPF()
        << objHistoricoOperacao.DescTabela()
        << objHistoricoOperacao.DescOperacao()
        << objHistoricoOperacao.CodTicket()
        << objHistoricoOperacao.CodigoOperacao()
        << objHistoricoOperacao.ValorTicket()
        << objHistoricoOperacao.CodigoCartao()
        << objHistoricoOperacao.IDTRansacao()
        << objHistoricoOperacao.Maquina();

    CoreFatory::ExecuteNonQuery(db,"p_cas_i_atualizahistoricooperacao",listparameter);
}
