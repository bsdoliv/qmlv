#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{

    db = CoreFatory::createConnection();
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_pushButton_clicked()
{
     DALPessoa *dal = new DALPessoa(db);
     QList<BEPessoa> list;
    // QVariantList  out;
    QVariantList parameter, out;

   //  parameter << 1 << ui->lblteste->text() << 10.65  << "@var" << "@teste";

     try{

         BEPessoa objpessoa;
         objpessoa.SetLogin("teste");
         objpessoa.SetExpiraSenha(false);
         objpessoa.SetSenha("igsitc54");
         objpessoa.SetSenhaDescod("alguma");

        list << dal->getPessoa(objpessoa,  out);

      }
     catch(Exception& ex)
     {

       QString message = ex.Message();
       QString smessage = ex.SourceMessage();

       msgBox.setText( message + " Numero erro =  " + QString::number(ex.ErroNumber()));
       msgBox.exec();

     }

     dalClient *dalC = new dalClient(db);
     QList<BeClient> listC;

     parameter.clear();
     out.clear();


     try
     {

         listC = dalC->getClient();

     }
     catch(Exception& ex)
     {

       QString message = ex.Message();
       QString smessage = ex.SourceMessage();

       msgBox.setText( message + " Numero erro =  " + QString::number(ex.ErroNumber()));
       msgBox.exec();
     }

     //foreach(BeClient c, listC)
     //{
      // int  idNomle= c.getIdCliente();
      // QString nome = c.getNomeCliente();
     //}

     //list.clear();;
     //listC.clear();

     //delete dalC ;


}

 void MainWindow::multi(QVariantList& list)
 {
     Q_UNUSED(list);
     throw("algum erro");
 }

void MainWindow::on_pushButton_2_clicked()
{
    DALPessoa *dal = new DALPessoa(db);
    QVariantList parameter, out;

    parameter<< 5 << "Arroz"<< "@saida";

    try{
    dal->InserePessoa(parameter, out);
   }

 catch(SqlException& ex)
{
 QString message = ex.Message();
// messagedb = ex.Errodriver();

 msgBox.setText(message + " Numero Erro " + QString::number(ex.ErroNumber())  );
 msgBox.exec();
}


    delete dal;
}

void MainWindow::on_pushButton_3_clicked()
{
    DALPessoa *dal = new DALPessoa(db);
    QVariantList parameter,out;
    //QVariantList out;

    parameter << 10 << "azeite" << "@saida" << "@pal";

 QString messagedb;

   try {
         dal->AtualizaPessoa(parameter,out);
       }

   catch(SqlException& ex)
   {
        QString message = ex.Message();
       // messagedb = ex.Errodriver();

        msgBox.setText(message + " Numero Erro " + QString::number(ex.ErroNumber()) + "  " + messagedb );
        msgBox.exec();
   }


    delete dal;
}

void MainWindow::on_pushButton_4_clicked()
{
    DALPessoa *dal = new DALPessoa(db);
    QVariantList parameter, out;

    parameter << 2 << "@saida";

     dal->DeletaPessoa(parameter, out);


}

void MainWindow::on_pushButton_5_clicked()
{
   QStringList listNome;
   QVariantList parameter, out;
   listNome << "Amanda"<< "Meire"<< "Armando"<<"laura"<< "armando"<< "huhuh"<<"priscila"
            <<"gustavo"<<"ale"<<"Antonio"<< "Guio";

   dalClient *cl = new dalClient(db);

try{

   foreach(QString s, listNome)
   {
       parameter << s << "@ggy";
       cl->InsereCliente(parameter, out);

       out.clear();
       parameter.clear();
   }
}

 catch(SqlException& ex)
 {
      QString message = ex.Message();
  // messagedb = ex.Errodriver();
      msgBox.setText(message + " Numero Erro " + QString::number(ex.ErroNumber()));
      msgBox.exec();
 }

}

void MainWindow::on_btnImprimir_clicked()
{
    QPrinter printer(QPrinter::PrinterResolution);
    printer.setDocName("Comprovante");

    printer.setPageMargins(1,2,0,0,QPrinter::Millimeter);
    printer.setColorMode(QPrinter::Color);
    printer.setOrientation(QPrinter::Portrait);

//    QSizeF paperSize;
//    paperSize.setWidth(80);


    printer.setPaperSize(QPrinter::A4);
    //printer.setPaperSize(paperSize, QPrinter::Millimeter);

      QPainter  painter;
      QColor color;

      QFont fontNormal, fontNomeCasa, fontNumConta, fontTextHeader, fontLogo;

      fontTextHeader.setBold(false);
      fontTextHeader.setFamily("Arial");
      fontTextHeader.setPixelSize(8);

       fontNormal.setBold(false);
       fontNormal.setFamily("Arial");
       fontNormal.setPixelSize(10);

       fontNomeCasa.setBold(true);
       fontNomeCasa.setFamily("Arial");
       fontNomeCasa.setPixelSize(10);

       fontNumConta.setBold(true);
       fontNumConta.setFamily("Arial");
       fontNumConta.setPixelSize(20);

       fontLogo.setBold(true);
       fontLogo.setFamily("Times New Roman");
       fontLogo.setPixelSize(12);
       fontLogo.setItalic(true);


      QPen Defaultpen;
      color.setRgb(0,0,0, 254);
      Defaultpen.setColor(color);


  //INICIA DESENHO IMPRESSÃO
      painter.begin(&printer);

      //CABEÇALHO
      DrawText(2,5,"*****************************************************", painter, fontNormal, Defaultpen);


             QRectF source(0.0, 0.0, 117.0, 45.0);
             QRectF target(80 / 1.2 , 2 , source.width() / 2 , source.height() / 2 ); // Posicionamento e Tamanho personalizado
             QImage image(QCoreApplication::applicationDirPath() + "/Images/RIO1.jpg");
             painter.drawImage(target, image, source);

      DrawText(MargemCentralizada("Bingo Big Bola",fontNomeCasa),30,"Bingo Big Bola", painter, fontNomeCasa, Defaultpen);
      DrawText(MargemCentralizada("Rua teste dos alcaparras, 898", fontTextHeader) ,40,"Rua teste dos alcaparras, 898", painter, fontTextHeader, Defaultpen);

      DrawText(2,50,"*****************************************************", painter, fontNormal, Defaultpen);

      //CORPO
      DrawText(2,70,"Account Number", painter, fontNormal, Defaultpen );

      DrawText(MargemCentralizada("7016 015",fontNumConta),95,"7016 015", painter, fontNumConta, Defaultpen);

      DrawText(2,115,"Balance:", painter, fontNormal, Defaultpen );
      DrawText(MargemEsquerda("10,00:", fontNormal, -20),115,QString("%1    %2").arg("$").arg("10,00"), painter, fontNormal, Defaultpen );
      DrawText(2,135,"Account Create:", painter, fontNormal, Defaultpen);
      DrawText(2,145,"04/15/2013 17:48:33", painter, fontNormal, Defaultpen);
      DrawText(2,165,"The ticket is valid for", painter, fontNormal, Defaultpen);
      DrawText(2,175,"the 30 days from this date.", painter, fontNormal, Defaultpen);
      DrawText(2,195,"This ticket is a document", painter, fontNormal, Defaultpen);
      DrawText(2,205,"Bearer and the payment of awards", painter, fontNormal, Defaultpen);
      DrawText(2,215,"Will exclusively or holder", painter, fontNormal, Defaultpen);
      DrawText(2,225,"against physical delevery.", painter, fontNormal, Defaultpen);


      //RODAPÉ
      DrawText(2,245,QString::fromUtf8("Teste de Rodapé"), painter, fontNormal, Defaultpen);
      DrawText(2,265,"Software by", painter, fontNormal, Defaultpen);
      DrawText(2,275,"Ortiz", painter, fontLogo, Defaultpen);

      painter.end();

       QPrintDialog *dlg = new QPrintDialog(&printer, this);

       if (dlg->exec() != QDialog::Accepted)
            return;

}


void MainWindow::on_btnAdicionar_clicked()
{

    QPrinter printer(QPrinter::PrinterResolution);
    printer.setDocName("Comprovante");

    printer.setPageMargins(1,2,0,0,QPrinter::Millimeter);
    printer.setColorMode(QPrinter::Color);
    printer.setOrientation(QPrinter::Portrait);
    printer.setPaperSize(QPrinter::A4);


      QPainter  painter;
      QColor color;

      QFont fontNormal, fontNomeCasa, fontNumConta, fontTextHeader, fontLogo;

      fontTextHeader.setBold(false);
      fontTextHeader.setFamily("Arial");
      fontTextHeader.setPixelSize(8);

       fontNormal.setBold(false);
       fontNormal.setFamily("Arial");
       fontNormal.setPixelSize(10);

       fontNomeCasa.setBold(true);
       fontNomeCasa.setFamily("Arial");
       fontNomeCasa.setPixelSize(10);

       fontNumConta.setBold(true);
       fontNumConta.setFamily("Arial");
       fontNumConta.setPixelSize(20);

       fontLogo.setBold(true);
       fontLogo.setFamily("Times New Roman");
       fontLogo.setPixelSize(12);
       fontLogo.setItalic(true);


      QPen Defaultpen;
      color.setRgb(0,0,0, 254);
      Defaultpen.setColor(color);


  //INICIA DESENHO IMPRESSÃO
      painter.begin(&printer);

      //CABEÇALHO
      DrawText(2,5,"*****************************************************", painter, fontNormal, Defaultpen);

                 QRectF source(0.0, 0.0, 117.0, 45.0);
                 QRectF target(80 / 1.2 , 2 , source.width() / 2 , source.height() / 2 ); // Posicionamento e Tamanho personalizado
                 QImage image(QCoreApplication::applicationDirPath() + "/Images/RIO1.jpg");
                 painter.drawImage(target, image, source);

      DrawText(MargemCentralizada("Bingo Big Bola",fontNomeCasa), 30 ,"Bingo Big Bola", painter, fontNomeCasa, Defaultpen);
      DrawText(MargemCentralizada("Rua teste dos alcaparras, 898", fontTextHeader) ,40,"Rua teste dos alcaparras, 898", painter, fontTextHeader, Defaultpen);

      DrawText(2,60,"This ticket is a reprint", painter, fontTextHeader, Defaultpen);

      DrawText(2,70,"*****************************************************", painter, fontNormal, Defaultpen);


      //CORPO
      DrawText(2,80,"Account Number", painter, fontNormal, Defaultpen );
      DrawText(MargemCentralizada("7016 015",fontNumConta),105,"7016 015", painter, fontNumConta, Defaultpen);
      DrawText(2,130,"Balance:", painter, fontNormal, Defaultpen );
      DrawText(MargemEsquerda("1000,00", fontNormal, -20),130,QString("%1    %2").arg("$").arg("1000,00"), painter, fontNormal, Defaultpen);
      DrawText(2,160,"Account Created:", painter, fontNormal, Defaultpen );
      DrawText(2,170,"04/15/2013 17:38:00", painter, fontNormal, Defaultpen );
      DrawText(2,190,"Trasaction date:", painter, fontNormal, Defaultpen );
      DrawText(2,200,"04/15/2013 17:50:00", painter, fontNormal, Defaultpen );
      DrawText(2,220,"This Ticket is valid for", painter, fontNormal, Defaultpen );
      DrawText(2,230,"the 30 days from this date", painter, fontNormal, Defaultpen );
      DrawText(2,250,"This ticket is a document", painter, fontNormal, Defaultpen );
      DrawText(2,260,"Bearer and the payment of awards", painter, fontNormal, Defaultpen );
      DrawText(2,280,"Will exclusively or holder", painter, fontNormal, Defaultpen );
      DrawText(2,290,"against physical delevery.", painter, fontNormal, Defaultpen );


      //RODAPÉ
      DrawText(2,310,QString::fromUtf8("Teste de Rodapé"), painter, fontNormal, Defaultpen);
      DrawText(2,330,"Software by", painter, fontNormal, Defaultpen);
      DrawText(2,340,"Ortiz", painter, fontLogo, Defaultpen);


      painter.end();

       QPrintDialog *dlg = new QPrintDialog(&printer, this);

       if (dlg->exec() != QDialog::Accepted)
            return;

}

void MainWindow::on_btnFechar_clicked()
{
    QPrinter printer(QPrinter::PrinterResolution);
    printer.setDocName("CLOSETICKET");

    printer.setPageMargins(1,2,0,0,QPrinter::Millimeter);
    printer.setColorMode(QPrinter::Color);
    printer.setOrientation(QPrinter::Portrait);

    QSizeF paperSize;
    paperSize.setWidth(80);
    paperSize.setHeight(100);

    printer.setPaperSize(QPrinter::A4);
    //printer.setPaperSize(paperSize, QPrinter::Millimeter);

      QPainter  painter;
      QColor color;

      QFont fontNormal, fontNomeCasa, fontNumConta, fontTextHeader, fontLogo;

      fontTextHeader.setBold(false);
      fontTextHeader.setFamily("Arial");
      fontTextHeader.setPixelSize(8);

       fontNormal.setBold(false);
       fontNormal.setFamily("Arial");
       fontNormal.setPixelSize(9);

       fontNomeCasa.setBold(true);
       fontNomeCasa.setFamily("Arial");
       fontNomeCasa.setPixelSize(10);

       fontNumConta.setBold(true);
       fontNumConta.setFamily("Arial");
       fontNumConta.setPixelSize(20);

       fontLogo.setBold(true);
       fontLogo.setFamily("Times New Roman");
       fontLogo.setPixelSize(12);
       fontLogo.setItalic(true);


      QPen Defaultpen;
      color.setRgb(0,0,0, 254);
      Defaultpen.setColor(color);


     //INICIA DESENHO IMPRESSÃO
      painter.begin(&printer);

      //CABEÇALHO
      DrawText(2,5,"*********************************************************", painter, fontNormal, Defaultpen);

          QRectF source(0.0, 0.0, 117.0, 45.0);
          QRectF target(80 / 1.2 , 2 , source.width() / 2 , source.height() / 2 ); // Posicionamento e Tamanho personalizado
          QImage image(QCoreApplication::applicationDirPath() + "/Images/RIO1.jpg");
          painter.drawImage(target, image, source);

      DrawText(MargemCentralizada("Bingo Big Bola",fontNomeCasa)  ,30,"Bingo Big Bola", painter, fontNomeCasa, Defaultpen);
      DrawText(MargemCentralizada("Rua teste dos alcaparras, 898", fontTextHeader) ,40,"Rua teste dos alcaparras, 898", painter, fontTextHeader, Defaultpen);


      DrawText(2,50,"*********************************************************", painter, fontNormal, Defaultpen);

      //CORPO
      DrawText(2,60,"Account Number", painter, fontNormal, Defaultpen );
      DrawText(MargemCentralizada("7016 015",fontNumConta),85,"7016 015", painter, fontNumConta, Defaultpen);

      DrawText(2,105,"Open:", painter, fontNormal, Defaultpen );
      DrawText(MargemEsquerda("4/15/2013 5:48:20 PM", fontNormal, -20),125,"4/15/2013 5:48:20 PM", painter, fontNormal, Defaultpen );

      DrawText(2,145,"Entrances Money Mac", painter, fontNormal, Defaultpen );
      DrawText(MargemEsquerda("$", fontNormal, 35),145,QString("%1").arg("$"), painter, fontNormal, Defaultpen );
      DrawText(MargemDireita("0,00", fontNormal, 0),145,QString("%1").arg("0,00"), painter, fontNormal, Defaultpen );

      DrawText(2,165,"Entrances Money with Ticket", painter, fontNormal, Defaultpen );
      DrawText(MargemEsquerda("$", fontNormal, 35),165,QString("%1").arg("$"), painter, fontNormal, Defaultpen );
      DrawText(MargemDireita("100000,00", fontNormal, 0),165,QString("%1").arg("100000,00"), painter, fontNormal, Defaultpen );


      DrawText(2,185,"Entrances Ticket Cash", painter, fontNormal, Defaultpen );
      DrawText(MargemEsquerda("$", fontNormal, 35),185,QString("%1").arg("$"), painter, fontNormal, Defaultpen );
      DrawText(MargemDireita("10,00", fontNormal, 0),185,QString("%1").arg("10,00"), painter, fontNormal, Defaultpen );

      DrawText(2,205,"Total of Entrances", painter, fontNormal, Defaultpen );
      DrawText(MargemEsquerda("$", fontNormal, 35),205,QString("%1").arg("$"), painter, fontNormal, Defaultpen );
      DrawText(MargemDireita("1025,00", fontNormal, 0),205,QString("%1").arg("1025,00"), painter, fontNormal, Defaultpen );

      DrawText(2,225,"Current Balance", painter, fontNormal, Defaultpen );
      DrawText(MargemEsquerda("$", fontNormal, 35),225,QString("%1").arg("$"), painter, fontNormal, Defaultpen );
      DrawText(MargemDireita("10025,00", fontNormal, 0),225,QString("%1").arg("10025,00"), painter, fontNormal, Defaultpen );

      DrawText(2,245,"Award", painter, fontNormal, Defaultpen );
      DrawText(MargemEsquerda("$", fontNormal, 35),245,QString("%1").arg("$"), painter, fontNormal, Defaultpen );
      DrawText(MargemDireita("100025,00", fontNormal, 0),240,QString("%1").arg("100025,00"), painter, fontNormal, Defaultpen );

      DrawText(2,265,"Allowance", painter, fontNormal, Defaultpen );
      DrawText(MargemEsquerda("$", fontNormal, 35),265,QString("%1").arg("$"), painter, fontNormal, Defaultpen );
      DrawText(MargemDireita("1,00", fontNormal, 0),265,QString("%1").arg("1,00"), painter, fontNormal, Defaultpen );

      DrawText(2,285,"Net Payment", painter, fontNormal, Defaultpen );
      DrawText(MargemEsquerda("$", fontNormal, 35),285,QString("%1").arg("$"), painter, fontNormal, Defaultpen );
      DrawText(MargemDireita("251,00", fontNormal, 0),285,QString("%1").arg("251,00"), painter, fontNormal, Defaultpen );

      DrawText(2,305,"Account Closed", painter, fontNormal, Defaultpen );
      DrawText(MargemEsquerda("4/15/2013 7:48:20 PM", fontNormal, -20),345,"4/15/2013 7:48:20 PM", painter, fontNormal, Defaultpen );

      DrawText(2,325,"Name", painter, fontNormal, Defaultpen );
    //DrawText(MargemDireita("Ricardo", fontNormal, 0),360,QString("%1").arg("Ricardo"), painter, fontNormal, Defaultpen );

      DrawText(2,360,"DOC:", painter, fontNormal, Defaultpen );
     // DrawText(MargemDireita("45455", fontNormal, 0),380,QString("%1").arg("45455"), painter, fontNormal, Defaultpen );


      //RODAPÉ
      DrawText(2,380,QString::fromUtf8("Teste de Rodapé"), painter, fontNormal, Defaultpen);
      DrawText(2,400,"Software by", painter, fontNormal, Defaultpen);
      DrawText(2,410,"Ortiz", painter, fontLogo, Defaultpen);

      painter.end();

       QPrintDialog *dlg = new QPrintDialog(&printer, this);

       if (dlg->exec() != QDialog::Accepted)
            return;

}

int MainWindow::MargemDireita(QString text, QFont font, int margemdireita)
{
    QFontMetrics fm (font);
    return (( 200 - fm.width(text))) + (margemdireita) ;
}

int MainWindow::MargemEsquerda(QString text, QFont font, int margemesquerda)
{
    QFontMetrics fm (font);
    return (( 200 - fm.width(text)) / 2) + (margemesquerda) ;
}

int MainWindow::MargemCentralizada(QString text, QFont font)
{
   QFontMetrics fm (font);
   return (( 200 - fm.width(text)) / 2);
}

void MainWindow::DrawText(int x, int y , QString text, QPainter &painter, const QFont &font, const  QPen &pen)
{
   painter.setFont(font);
   painter.setPen(pen);
   painter.drawText(x, y, text);
}
