#ifndef BEOBTEREXPIRACAOTICKET_H
#define BEOBTEREXPIRACAOTICKET_H

#include "CoreCommom/basebind.h"
#include <QString>
#include <QObject>

namespace Model {
    class BEObterExpiracaoTicket: public BaseBind {
    private:

      int  intCodigoExpiracao;
      QString strValor;
      int  intDias;
      int  intStatus;
      QString strDataVigencia;
      bool blnSelecionar;
      bool blnEnviarEmailFechamento;
      bool blnContabilParcial;
      QString strCancelamento;
      QString strRetirosEfectivo;
      QString strEfectivo;
      QString strAposta;
      bool blnCompAddCredito;
      bool blnNumerosintinteiros;
      bool blnFecharTicketPromo;
      bool blnEnviaEmailContabil;
      bool blnEnviaPDFContabil;
      bool blnEnviaXMLContabil;
      int  intDiasExclusaoContabil;
      int  intMaximoJogadores;
      bool blnEnviaEmailPagManual;
      bool blnEnviaContabilMod;
      bool blnEnviaContabilFab;
      bool blnFechamentoConsolidado;
      bool blnEnviaPDFPagManual;
      bool blnEnviaXMLPagManual;
      bool blnCalculaVendas;
      bool blnValoresNegativos;
      bool blnHora;
      QString strhoraAbertura;
      QString strhorafechamento;
      bool blnenceramentoautomatico ;

    public:
      BEObterExpiracaoTicket();

      void SetCodigoExpiracao(const int &codigoExpiracao);
      int CodigoExpiracao() const;

      void SetValor(const QString &valor);
      QString Valor() const;

      void SetDias(const int &dias);
      int Dias() const;

      void SetStatus(const int &status);
      int Status() const;

      void SetDataVigencia(const QString &dataVigencia);
      QString DataVigencia() const;

      void SetSelecionar(const bool &selecionar);
      bool  Selecionar() const;

      void SetEnviarEmailFechamento(const bool &enviarEmailFechamento);
      bool  EnviarEmailFechamento() const;

      void SetContabilParcial(const bool &contabilParcial);
      bool  ContabilParcial() const;

      void SetCancelamento(const QString &cancelamento);
      QString Cancelamento() const;

      void SetRetirosEfectivo(const QString &retirosEfectivo);
      QString RetirosEfectivo() const;

      void SetEfectivo(const QString &efectivo);
      QString Efectivo() const;

      void SetAposta(const QString &aposta);
      QString Aposta() const;

      void SetCompAddCredito(const bool &compAddCredito);
      bool  CompAddCredito() const;

      void SetNumerosintinteiros(const bool &numerosintinteiros);
      bool  Numerosintinteiros() const;

      void SetFecharTicketPromo(const bool &fecharTicketPromo);
      bool  FecharTicketPromo() const;

      void SetEnviaEmailContabil(const bool &enviaEmailContabil);
      bool  EnviaEmailContabil() const;

      void SetEnviaPDFContabil(const bool &enviaPDFContabil);
      bool  EnviaPDFContabil() const;

      void SetEnviaXMLContabil(const bool &enviaXMLContabil);
      bool  EnviaXMLContabil() const;

      void SetDiasExclusaoContabil(const int &diasExclusaoContabil);
      int DiasExclusaoContabil() const;

      void SetMaximoJogadores(const int &maximoJogadores);
      int MaximoJogadores() const;

      void SetEnviaEmailPagManual(const bool &enviaEmailPagManual);
      bool  EnviaEmailPagManual() const;

      void SetEnviaContabilMod(const bool &enviaContabilMod);
      bool  EnviaContabilMod() const;

      void SetEnviaContabilFab(const bool &enviaContabilFab);
      bool  EnviaContabilFab() const;

      void SetFechamentoConsolidado(const bool &fechamentoConsolidado);
      bool  FechamentoConsolidado() const;

      void SetEnviaPDFPagManual(const bool &enviaPDFPagManual);
      bool  EnviaPDFPagManual() const;

      void SetEnviaXMLPagManual(const bool &enviaXMLPagManual);
      bool  EnviaXMLPagManual() const;

      void SetCalculaVendas(const bool &calculaVendas);
      bool  CalculaVendas() const;

      void SetValoresNegativos(const bool &valoresNegativos);
      bool  ValoresNegativos() const;

      void SetHora(const bool &hora);
      bool Hora() const;

      void SethoraAbertura(const QString &horaAbertura);
      QString horaAbertura() const;

      void Sethorafechamento(const QString &horafechamento);
      QString horafechamento() const;

      void Setenceramentoautomatico (const bool &enceramentoautomatico);
      bool  enceramentoautomatico () const;

      void bind(const QSqlRecord& record);
    };
}

Q_DECLARE_METATYPE(QList<Model::BEObterExpiracaoTicket>)

#endif // BEOBTEREXPIRACAOTICKET_H
