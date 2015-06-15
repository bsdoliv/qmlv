#include <QtTest/QtTest>
#include <QObject>
#include <QDate>

/*
#if 0
#include "../lib/CoreFatory/corefatory.h"

#include "../lib/CoreCommom/basebind.h"
#include "../lib/CoreCommom/corecommom.h"
#include "../lib/CoreCommom/sqlexception.h"

#include "../lib/CASCoreBusiness/BETicket.h"
#include "../lib/CASCoreBusiness/BEhistoricooperacao.h"
#include "../lib/CASCoreBusiness/BENovomovimento.h"
#include "../lib/CASCoreBusiness/BEFecharticket.h"
#include "../lib/CASCoreBusiness/BEObterexpiracaoticket.h"

#include "../lib/CasCoreData/DALTticket.h"
#endif
*/

class TestBENovoMovimento : public QObject
{
    Q_OBJECT

public slots:
    void initTestCase();
    void cleanupTestCase();

private slots:
    void novoMovimento_data();
    void novoMovimento();
};

void 
TestBENovoMovimento::initTestCase()
{
#if 0
    QString param( 
    " INSERT INTO ticket.cas_prt_mexparametros (prt_n_codigo, prt_n_valor, prt_n_dias,"
    " prt_n_status, prt_d_datavigencia, prt_b_impcompaddcred, "
    " prt_b_enviaremailcierredia, prt_b_operarnumerosinteiros, prt_b_reutilizarticket, "
    " prt_b_emailcontfechamento, prt_b_contabilparcial, prt_b_cupomb, prt_n_diascontabil, "
    " prt_b_enviapdfcontabil, prt_b_enviaxmlcontabil, prt_b_enviarxmlpagmanual, prt_b_enviarpdfpagmanual, "
    " prt_b_enviarpagmanualfechamento, prt_b_permitirsaldonegativo, prt_b_calcularvendas, prt_b_fecharticketpromocao, "
    " prt_b_enviarcontmod, prt_b_enviarcontfab, prt_b_fechamentoconsolidado, prt_b_arcade, prt_n_valepremio, "
    " prt_n_tipointensidadecartao, prt_n_numeromaximojogadores, prt_b_horas, "
    " prt_t_horaabertura, prt_t_horafechamento, prt_b_encerraautomatico) "
    "VALUES (1, 100000, 30, 1, '2013.04.05:00:00:00', 0, 0, 1, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, "
    " 0, 0, 0, 0, 0, NULL, NULL, NULL, 30, 0, '00:00:00.0000000', '00:00:00.0000000', 0);"
    );

    QSqlDatabase db = CoreFatory::createConnection();
    db.open();
    db.exec(param);
#endif
}

void 
TestBENovoMovimento::cleanupTestCase()
{
#if 0
    QString param(" DELETE FROM ticket.cas_prt_mexparametros;");

    QSqlDatabase db = CoreFatory::createConnection();
    db.open();
    db.exec(param);
#endif
}

void
TestBENovoMovimento::novoMovimento_data()
{
#if 0
    try
    {
    QTest::addColumn<QList<Model::BENovoMovimento> >("list_template");

    QList<Model::BENovoMovimento> list_template;

    Model::BEHistoricoOperacao  his;
    his.SetCodTicket("1883652");
    his.SetDescOperacao("Create: 1883652 Valor: 20.00");
    his.SetCPF("3333333");
    his.SetDescTabela("Create Ticket");
    his.SetCodigoUsuario(1);
    his.SetIDTRansacao("4545454522159");

    Model::BENovoMovimento benmvto;
    benmvto.SetCode("1883652");
    benmvto.SetEncript(6);
    benmvto.SetEntrada("2000");
    benmvto.SetTipoMov(1);
    benmvto.SetMaquina("F04DA2E5208C");
    benmvto.SetHistoricoOperacao(his);

    benmvto.SetDiaVencimento(30);
    benmvto.setFecha(QDate::currentDate());

    list_template << benmvto;

    QTest::newRow("SUCCESS_CASE") 
        << list_template;
    }
    catch(Exception ex)
    {
      QFAIL(ex.SourceMessage());
    }

#endif
}

void
TestBENovoMovimento::novoMovimento()
{
#if 0
    try
    {
    //QFAIL("fail at novoMovimento()");
    Model::BEHistoricoOperacao  his;
    his.SetCodTicket("1883652");
    his.SetDescOperacao("Create: 1883652 Valor: 20.00");
    his.SetCPF("3333333");
    his.SetDescTabela("Create Ticket");
    his.SetCodigoUsuario(1);
    his.SetIDTRansacao("4545454522159");

    Model::BENovoMovimento benmvto;
    benmvto.SetCode("1883652");
    benmvto.SetEncript(6);
    benmvto.SetEntrada("2000");
    benmvto.SetTipoMov(1);
    benmvto.SetMaquina("F04DA2E5208C");
    benmvto.SetHistoricoOperacao(his);

    benmvto.SetDiaVencimento(30);
    benmvto.setFecha(QDate::currentDate());

    QSqlDatabase db = CoreFatory::createConnection();
    DataAcessLayer::DALTicket *ti = new DataAcessLayer::DALTicket(db);

    QVariantList out;
    QList<BENovoMovimento> list =  ti->NovoMovimento(benmvto, out);

    QVERIFY(! list.empty());
    }
    catch(Exception ex)
    {
      QFAIL(ex.SourceMessage());
    }
#endif
}

QTEST_MAIN(TestBENovoMovimento)

#include "test_benovomovimento.moc"
