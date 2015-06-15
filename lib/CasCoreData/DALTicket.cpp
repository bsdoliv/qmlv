#include "DALTicket.h"

using namespace DataAcessLayer;

DALTicket::DALTicket(const QString &bd)
{
    this->db = bd;
}

bool 
DALTicket::VerificaDispoNumeroTicket(const QString &numTicket)
{
    QVariantList listparameter, out;

    listparameter << numTicket << "@bit_retorno";
    CoreFatory::ExecuteNonQuery(db,"p_cas_c_verificadisponumeroticket",listparameter, out);

    return out.value(0).toBool();
}

QList<BETicket> 
DALTicket::VerificaNumeroTicket(const QString &numTicket)
{
    QVariantList listparameter;
    listparameter << numTicket ;
    return  GetListbd<BETicket>(db,"p_cas_c_verificanumeroticket", listparameter);
}

QList<BENovoMovimento> 
DALTicket::NovoMovimento(const BENovoMovimento& objBeNovoMovimento)
{
     DALHistoricoOperacao *HisOperacao = new DALHistoricoOperacao(db);
     QVariantList listparameter;
                  listparameter << objBeNovoMovimento.Code()
                                << objBeNovoMovimento.Entrada()
                                << objBeNovoMovimento.MaxEntrada()
                                << objBeNovoMovimento.TipoMov()
                                << objBeNovoMovimento.Maquina()
                                << objBeNovoMovimento.HistoricoOperacao().IDTRansacao();

     QList<BENovoMovimento> list = GetListbd<BENovoMovimento>(db,"p_cas_i_wmexnewmovement", listparameter);

     //Registra o histórico de operação
     HisOperacao->ConfirmaHistorico(objBeNovoMovimento.HistoricoOperacao());
     delete HisOperacao;

     return  list;
}

QList<BEFecharTicket> 
DALTicket::FecharTichet(const BEFecharTicket &objBeFecharTicket, QVariantList& out)
{
#if 1


     QVariantList listparameter;
                  listparameter << objBeFecharTicket.Code()
                                << objBeFecharTicket.CodeBonif()
                                << objBeFecharTicket.Save()
                                << objBeFecharTicket.Maquina()
                                << objBeFecharTicket.Abertura()
                                << true
                                << objBeFecharTicket.Encript()
                                << objBeFecharTicket.HistoricoOperacao().CodigoUsuario();

     QList<BEFecharTicket> list = GetListbd<BEFecharTicket>(db,"p_cas_i_wmexcierreticket", listparameter, out);

     //Registra o histórico de operação
     if (objBeFecharTicket.Save() == 1) {
        DALHistoricoOperacao *HisOperacao = new DALHistoricoOperacao(db);
        // HisOperacao->ConfirmaHistorico(objBeFecharTicket.HistoricoOperacao());
        delete HisOperacao;
     }
     return  list;
#endif
}

QList<BEObterExpiracaoTicket> 
DALTicket::obterExpiracaoTicket(const QVariantList& listparameter)
{
   return GetListbd<BEObterExpiracaoTicket>(db,"p_cas_o_mexobterexpiracaotickets", listparameter);
}

void 
DALTicket::CreateNewTicket(const BENovoMovimento& objBeNovoMovimento, QVariantList& out)
{
    DALHistoricoOperacao *HisOperacao = new DALHistoricoOperacao(db);

    QVariantList listparameter;
              listparameter << objBeNovoMovimento.Code()
                            //<< objBeNovoMovimento.Encript()
                            << objBeNovoMovimento.Entrada()
                            << objBeNovoMovimento.TipoMov()
                            << objBeNovoMovimento.Maquina()
                            << objBeNovoMovimento.HistoricoOperacao().IDTRansacao()
                            << objBeNovoMovimento.HistoricoOperacao().CodigoUsuario();

    CoreFatory::ExecuteNonQuery(db,"p_cas_i_wmexnewticket",listparameter, out);

    // Registra o histórico de operação
    HisOperacao->ConfirmaHistorico(objBeNovoMovimento.HistoricoOperacao());
    delete HisOperacao;
}
