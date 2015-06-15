#include "frmlogin.h"
#include "ui_frmlogin.h"




frmLogin::frmLogin(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::frmLogin)
{

    try
    {
      db = CoreFatory::createConnection();
      ui->setupUi(this);
    }
    catch(Exception ex)
    {
        QMessageBox::warning(0, QObject::tr("Exception"),
                             QObject::tr("Error:  %1 %2").arg(ex.SourceMessage()).arg(ex.Message()));
    }
}

frmLogin::~frmLogin()
{
    delete ui;
}

void frmLogin::on_btnOk_clicked()
{

    DALTicket *ti = new DALTicket(db);
    DALPessoa *dal = new DALPessoa(db);

    QList<BEPessoa> list;
    QVariantList parameter, out;

    try
    {


        BEHistoricoOperacao  His;
        His.SetCodTicket("1883652");
        His.SetDescOperacao("Create: 1883652 Valor: 20.00");
        His.SetCPF("3333333");
        His.SetDescTabela("Create Ticket");
        His.SetCodigoUsuario(1);
        His.SetIDTRansacao("4545454522159");


        //Criar Ticket
        BENovoMovimento NewMovimento;
        NewMovimento.SetCode("1883652");
        NewMovimento.SetEncript(6);
        NewMovimento.SetEntrada("2000");
        NewMovimento.SetTipoMov(1);
        NewMovimento.SetMaquina("F04DA2E5208C");
        NewMovimento.SetHistoricoOperacao(His);
        ti->CreateNewTicket(NewMovimento, out);


        //Adicionar Credito Ticket
//        BENovoMovimento AddNewMovimento;
//        AddNewMovimento.SetCode("8883652");
//        AddNewMovimento.SetEntrada("2000");
//        AddNewMovimento.SetMaxEntrada("5000");
//        AddNewMovimento.SetTipoMov(1);
//        AddNewMovimento.SetMaquina("F04DA2E5208C");
//        AddNewMovimento.SetHistoricoOperacao(His);

//        QList<BENovoMovimento> list =  ti->NovoMovimento(AddNewMovimento, out);



        //Fechar Ticket --Buscar Dados
        BEHistoricoOperacao  HisFechar;
        HisFechar.SetCodTicket("1883652");
        HisFechar.SetDescOperacao("Close: 1567322 Valor:");
        HisFechar.SetCPF("3333333");
        HisFechar.SetDescTabela("Close Ticket");
        HisFechar.SetCodigoUsuario(1);
        HisFechar.SetIDTRansacao("156732220130408160549");

        BEFecharTicket *FecharTicket = new BEFecharTicket();
        FecharTicket->SetCode("1883652");
        FecharTicket->SetCodeBonif("");
        FecharTicket->SetSave(0);
        FecharTicket->SetMaquina("F04DA2E5208C");
        FecharTicket->SetAbertura(true);
        FecharTicket->SetEncript(0);
        FecharTicket->SetHistoricoOperacao(HisFechar);
        ti->FecharTichet(*FecharTicket, out);


        //Fechar Ticket -- Efetivar Fechamento



       // ti->FecharTichet(parameter, out);
       // bool teste = ti->VerificaDispoNumeroTicket("1515063");
       // out.clear();
       // QString valor = Configuration::Setting("teste");


      QList<BETicket> tick = ti->VerificaNumeroTicket("4525366");


        BEPessoa *objpessoa= new BEPessoa;
        objpessoa->SetLogin("admin");
        objpessoa->SetExpiraSenha(false);
        objpessoa->SetSenha("igsitc54");
        objpessoa->SetSenhaDescod("alguma");

    QList<BEPessoa>  listpessoa = dal->getPessoa(*objpessoa,  out);

        delete objpessoa;

    }
    catch(Exception ex)
    {

       QMessageBox::warning(0, QObject::tr("Exception"),
                            QObject::tr("Error:  %1 %2 : Numero erro : %3").arg(ex.SourceMessage()).arg(ex.Message()).arg(ex.ErroNumber()));

    }



}

void frmLogin::on_btnCancel_clicked()
{
    close();
}
