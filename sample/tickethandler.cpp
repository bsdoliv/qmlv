#include "tickethandler.h"
#include "casuidata.h"

#include <QPainter>
#include <QPrinter>
#include <QRegExp>
#include <QDesktopServices>

struct TicketHandlerPrivate
{
    enum Op {
        Close = 1,
        Get = 0
    };

    const QObject *parent;

    bool closeTicket(const QString &ticket_id,
                     CASData::ViewResponse &response,
                     enum Op op = TicketHandlerPrivate::Get) {
        QString dbconname(parent->metaObject()->className());
        {
            QSqlDatabase db = QSqlDatabase::addDatabase("QMYSQL", dbconname);
            if (! db.isOpen()) {
                db.setHostName("127.0.0.1");
                db.setDatabaseName("ticket");
                db.setUserName("root");
                db.setPassword("");
            }
        }

        bool success = true;

        try {


            if (ticket_id.length() < 7 ) {

                response["error_msg"] = "The Number of the Ticket must be composed of 7 digits";
                response["error_cod"] = 1;
                success = false;
                return success;
            }

            BEFecharTicket fe = getCloseTicket(dbconname, 
                                               ticket_id,
                                               op);
            response["ticket_id"] = ticket_id;
            response["entrances_money"] = fe.EntradasDinheiro();
            response["entrances_ticket"] = fe.EntradasTicket();
            response["entrances_ticket_cash"] = fe.EntradasTicketCaixa();
            response["entrances_total"] = fe.Entrada();
            response["bet"] = fe.Aposta();
            response["current_balance"] = fe.Salida();
            // TODO
            //    (*response())["award"] = fe.prefix_signalName();
            //    (*response())["allowance"] = fe.prefix_signalName();
            response["net_payment"] = fe.SaldoTotal();
        } catch (Exception ex) {
            success = false;

            switch(ex.errorNumber()){

            case 142:
                response["error_msg"] =   "Ticket not active or no existent"; ;
                break;

                default:
                response["error_msg"]= ex.Message();
                  break;
            }

            response["error_cod"] = ex.errorNumber();
        }

        QSqlDatabase::database(dbconname).close();
        QSqlDatabase::removeDatabase(dbconname);

        return success;
    }

    quint32 rand(quint32 low, quint32 high) {
        return ((qrand() % ((high + 1) - low)) + low);
    }

    QString randomTicketNumber() {
        return  QString::number(rand(1000, 9999)) + 
                QString::number(rand(100, 999));
    }

    void drawText(int x, int y,
                  QString text, 
                  QPainter &painter, 
                  const QFont &font, 
                  const  QPen &pen) {
        painter.setFont(font);
        painter.setPen(pen);
        painter.drawText(x, y, text);
    }

    int margemCentralizada(const QString &text, const QFont &font) {
        QFontMetrics fm(font);
        return (( 200 - fm.width(text)) / 2);
    }

    int margemEsquerda(const QString &text, const QFont &font,
                       int margemEsquerda) {
        QFontMetrics fm (font);
        return (( 200 - fm.width(text)) / 2) + (margemEsquerda) ;
    }

    int margemDireita(QString text, QFont font, int margemdireita) {
        QFontMetrics fm (font);
        return (( 200 - fm.width(text))) + (margemdireita) ;
    }

    QString formatValue(const double &value) {
        return QString::number(value, 'f', 2);
    }

    void printNewTicket(const QString &ticket_id,
                        const QString &ticket_value,
                        const QString &date_create) {

        QPrinter printer(QPrinter::PrinterResolution);
        printer.setDocName("Comprovante");
        printer.setPageMargins(1,2,0,0,QPrinter::Millimeter);
        printer.setColorMode(QPrinter::Color);
        printer.setOrientation(QPrinter::Portrait);
        printer.setPaperSize(QPrinter::A4);

        QString receipt_path(QString("/tmp/%1_new.pdf").arg(cleanupNumber(ticket_id)));
        printer.setOutputFileName(receipt_path);
        std::string codTicketToPrint = ticket_id.toAscii().data();
        QString ticketformat =(QString("%1 %2").arg(codTicketToPrint.substr(0, 4).c_str()).arg(codTicketToPrint.substr(4, 3).c_str()));

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
          drawText(2,5,"*****************************************************", painter, fontNormal, Defaultpen);


//                 QRectF source(0.0, 0.0, 117.0, 45.0);
//                 QRectF target(80 / 1.2 , 2 , source.width() / 2 , source.height() / 2 ); // Posicionamento e Tamanho personalizado
//                 QImage image(QCoreApplication::applicationDirPath() + "/Images/RIO1.jpg");
//                 painter.drawImage(target, image, source);

          drawText(margemCentralizada("Biloxi",fontNomeCasa),30,"Biloxi", painter, fontNomeCasa, Defaultpen);
          drawText(margemCentralizada("", fontTextHeader) ,40,"", painter, fontTextHeader, Defaultpen);

          drawText(2,50,"*****************************************************", painter, fontNormal, Defaultpen);

          //CORPO
          drawText(2,70,"Account Number", painter, fontNormal, Defaultpen );

          drawText(margemCentralizada(ticketformat,fontNumConta),95,ticketformat, painter, fontNumConta, Defaultpen);

          drawText(2,115,"Balance:", painter, fontNormal, Defaultpen );
          drawText(margemEsquerda(ticket_value, fontNormal, -20),115,QString("%1    %2").arg("$").arg(ticket_value), painter, fontNormal, Defaultpen );
          drawText(2,135,"Account Create:", painter, fontNormal, Defaultpen);
          drawText(2,145,date_create, painter, fontNormal, Defaultpen);
          drawText(2,165,"The ticket is valid for", painter, fontNormal, Defaultpen);
          drawText(2,175,"the 30 days from this date.", painter, fontNormal, Defaultpen);
          drawText(2,195,"This ticket is a document", painter, fontNormal, Defaultpen);
          drawText(2,205,"Bearer and the payment of awards", painter, fontNormal, Defaultpen);
          drawText(2,215,"Will exclusively or holder", painter, fontNormal, Defaultpen);
          drawText(2,225,"against physical delevery.", painter, fontNormal, Defaultpen);


          //RODAPÉ
          drawText(2,265,"Software by", painter, fontNormal, Defaultpen);
          drawText(2,275,"Ortiz", painter, fontLogo, Defaultpen);


        painter.end();
        QDesktopServices::openUrl(QUrl("file://" + receipt_path, QUrl::TolerantMode));
    }

    void printCloseTicket(const CASData::ViewResponse &response) {
        QPrinter printer(QPrinter::PrinterResolution);
        printer.setDocName("CLOSETICKET");
        printer.setPageMargins(1,2,0,0,QPrinter::Millimeter);
        printer.setColorMode(QPrinter::Color);
        printer.setOrientation(QPrinter::Portrait);
        printer.setPaperSize(QPrinter::A4);
        printer.setOutputFormat(QPrinter::PdfFormat);
        QString ticket_id = response["ticket_id"].toString();
        std::string codTicketToPrint = ticket_id.toAscii().data();
        QString ticketformat =(QString("%1 %2").arg(codTicketToPrint.substr(0, 4).c_str()).arg(codTicketToPrint.substr(4, 3).c_str()));
        QString receipt_path(QString("/tmp/%1_close.pdf").arg(cleanupNumber(ticket_id)));
        printer.setOutputFileName(receipt_path);

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
        drawText(2,5,"*********************************************************",
                 painter, fontNormal, Defaultpen);
        QRectF source(0.0, 0.0, 117.0, 45.0);
        // Posicionamento e Tamanho personalizado
        QRectF target(80 / 1.2 , 2 , source.width() / 2 , source.height() / 2 ); 
        QImage image(QCoreApplication::applicationDirPath() + "/Images/RIO1.jpg");
        painter.drawImage(target, image, source);
        drawText(margemCentralizada("Biloxi",fontNomeCasa),
                 30, "Biloxi", painter, fontNomeCasa, Defaultpen);
        drawText(margemCentralizada("", fontTextHeader),
                 40,"", painter, fontTextHeader, Defaultpen);
        drawText(2,50,"*********************************************************",
                 painter, fontNormal, Defaultpen);

        //CORPO
        drawText(2,60,"Account Number", painter, fontNormal, Defaultpen );
        drawText(margemCentralizada(ticketformat,fontNumConta),
                 85,ticketformat, painter, fontNumConta, Defaultpen);
        drawText(2,105,"Open:", painter, fontNormal, Defaultpen );
        drawText(margemEsquerda(
                 QDateTime::currentDateTime().toString("MM/dd/yyyy hh:mm:ss"), fontNormal, -20),
                 125,"4/15/2013 5:48:20 PM", painter, fontNormal, Defaultpen );
        drawText(2,145,"Entrances Money Mac", painter, fontNormal, Defaultpen );
        drawText(margemEsquerda("$", fontNormal, 35),
                 145,QString("%1").arg("$"), painter, fontNormal, Defaultpen );
        drawText(margemDireita(response["entrances_money"].toString(), fontNormal, 0),
                 145,response["entrances_money"].toString(), painter, fontNormal, Defaultpen );
        drawText(2,165,"Entrances Money with Ticket", painter, fontNormal, Defaultpen );
        drawText(margemEsquerda("$", fontNormal, 35),
                 165,QString("%1").arg("$"), painter, fontNormal, Defaultpen );
        drawText(margemDireita(response["entrances_ticket_cash"].toString(), fontNormal, 0),
                 165, response["entrances_ticket_cash"].toString(), painter, fontNormal, Defaultpen );
        drawText(2,185,"Entrances Ticket Cash", painter, fontNormal, Defaultpen );
        drawText(margemEsquerda("$", fontNormal, 35),
                 185,QString("%1").arg("$"), painter, fontNormal, Defaultpen );
        drawText(margemDireita(response["entrances_ticket_cash"].toString(), fontNormal, 0),
                 185, response["entrances_ticket_cash"].toString(), painter, fontNormal, Defaultpen );
        drawText(2,205,"Total of Entrances", painter, fontNormal, Defaultpen );
        drawText(margemEsquerda("$", fontNormal, 35),
                 205,QString("%1").arg("$"), painter, fontNormal, Defaultpen );
        drawText(margemDireita("1025,00", fontNormal, 0),
                 205,QString("%1").arg("1025,00"), painter, fontNormal, Defaultpen );
        drawText(2,225,"Current Balance", painter, fontNormal, Defaultpen );
        drawText(margemEsquerda("$", fontNormal, 35),
                 225,QString("%1").arg("$"), painter, fontNormal, Defaultpen );
        drawText(margemDireita("10025,00", fontNormal, 0),
                 225,QString("%1").arg("10025,00"), painter, fontNormal, Defaultpen );
        drawText(2,245,"Award", painter, fontNormal, Defaultpen );
        drawText(margemEsquerda("$", fontNormal, 35),
                 245,QString("%1").arg("$"), painter, fontNormal, Defaultpen );
        drawText(margemDireita("100025,00", fontNormal, 0),
                 240,QString("%1").arg("100025,00"), painter, fontNormal, Defaultpen );
        drawText(2,265,"Allowance", painter, fontNormal, Defaultpen );
        drawText(margemEsquerda("$", fontNormal, 35),
                 265,QString("%1").arg("$"), painter, fontNormal, Defaultpen );
        drawText(margemDireita("1,00", fontNormal, 0),
                 265,QString("%1").arg("1,00"), painter, fontNormal, Defaultpen );
        drawText(2,285,"Net Payment", painter, fontNormal, Defaultpen );
        drawText(margemEsquerda("$", fontNormal, 35),
                 285,QString("%1").arg("$"), painter, fontNormal, Defaultpen );
        drawText(margemDireita("251,00", fontNormal, 0),
                 285,QString("%1").arg("251,00"), painter, fontNormal, Defaultpen );
        drawText(2,305,"Account Closed", painter, fontNormal, Defaultpen );
        drawText(margemEsquerda("4/15/2013 7:48:20 PM", fontNormal, -20),
                 345,"4/15/2013 7:48:20 PM", painter, fontNormal, Defaultpen );
        drawText(2,325,"Name", painter, fontNormal, Defaultpen );
        drawText(2,360,"DOC:", painter, fontNormal, Defaultpen );

        //RODAPÉ
        drawText(2,380,QString::fromUtf8("Teste de Rodapé"), painter, fontNormal, Defaultpen);
        drawText(2,400,"Software by", painter, fontNormal, Defaultpen);
        drawText(2,410,"Ortiz", painter, fontLogo, Defaultpen);
        painter.end();
        QDesktopServices::openUrl(QUrl("file://" + receipt_path, QUrl::TolerantMode));
    }

    void printAddCreditTicket(const QString &ticket_id,
                              const QString &datageracao,
                              const QString &datatransacao,
                              const QString &saldo,
                              const int  &diasvencimento) {
        QPrinter printer(QPrinter::PrinterResolution);
        printer.setDocName("Comprovante");
        printer.setPageMargins(1,2,0,0,QPrinter::Millimeter);
        printer.setColorMode(QPrinter::Color);
        printer.setOrientation(QPrinter::Portrait);
        printer.setPaperSize(QPrinter::A4);
        printer.setOutputFormat(QPrinter::PdfFormat);
        QString receipt_path(QString("/tmp/%1_addcredit.pdf").arg(cleanupNumber(ticket_id)));
        printer.setOutputFileName(receipt_path);

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
        drawText(2,5,"*****************************************************",
                 painter, fontNormal, Defaultpen);

        QRectF source(0.0, 0.0, 117.0, 45.0);
        // Posicionamento e Tamanho personalizado
        QRectF target(80 / 1.2 , 2 , source.width() / 2 , source.height() / 2 ); 
        // XXX missing image
        QImage image(QCoreApplication::applicationDirPath() + "/Images/RIO1.jpg");
        painter.drawImage(target, image, source);

        drawText(margemCentralizada("Biloxi",fontNomeCasa),
        30 ,"Biloxi", painter, fontNomeCasa, Defaultpen);
        drawText(margemCentralizada("", fontTextHeader),
        40, "", painter, fontTextHeader, Defaultpen);
        drawText(2,60,"This ticket is a reprint", painter, fontTextHeader, Defaultpen);
        drawText(2,70,"*****************************************************",
                 painter, fontNormal, Defaultpen);

        //CORPO
        drawText(2,80,"Account Number", painter, fontNormal, Defaultpen );
        drawText(margemCentralizada(ticket_id,fontNumConta),
                 105,ticket_id, painter, fontNumConta, Defaultpen);
        drawText(2,130,"Balance:", painter, fontNormal, Defaultpen );
        drawText(margemEsquerda(saldo, fontNormal, -20),
                 130,QString("%1    %2").arg("$").arg(saldo), painter, fontNormal, Defaultpen);
        drawText(2,160,"Account Created:", painter, fontNormal, Defaultpen );
        drawText(2,170,datageracao, painter, fontNormal, Defaultpen );
        drawText(2,190,"Transaction date:", painter, fontNormal, Defaultpen );
        drawText(2,200,datatransacao, painter, fontNormal, Defaultpen );
        drawText(2,220,"This Ticket is valid for", painter, fontNormal, Defaultpen );
        drawText(2,230,QString("the %1 days from this date").arg(diasvencimento),
                 painter, fontNormal, Defaultpen );
        drawText(2,250,"This ticket is a document", painter, fontNormal, Defaultpen );
        drawText(2,260,"Bearer and the payment of awards", painter, fontNormal, Defaultpen );
        drawText(2,280,"Will exclusively or holder", painter, fontNormal, Defaultpen );
        drawText(2,290,"against physical delevery.", painter, fontNormal, Defaultpen );

        //RODAPÉ
        drawText(2,310,QString::fromUtf8("Ortiz"), painter, fontNormal, Defaultpen);
        drawText(2,330,"Software by", painter, fontNormal, Defaultpen);
        drawText(2,340,"Ortiz", painter, fontLogo, Defaultpen);

        painter.end();
        QDesktopServices::openUrl(QUrl("file://" + receipt_path, QUrl::TolerantMode));
    }
    
    BEFecharTicket getCloseTicket(const QString &dbconname, 
                                  const QString &ticket_id,
                                  enum Op op)
    {
        DALTicket *ti = new DALTicket(dbconname);
        // o nome eh FecharTicket mas na real eh so' pra Buscar Dados
        BEHistoricoOperacao  HisFechar;
        HisFechar.SetCodTicket(ticket_id);
        HisFechar.SetDescOperacao("");
        HisFechar.SetCPF("");
        HisFechar.SetDescTabela("");
        HisFechar.SetCodigoUsuario(1);
        HisFechar.SetIDTRansacao("");

        BEFecharTicket *FecharTicket = new BEFecharTicket();
        FecharTicket->SetCode(ticket_id);
        FecharTicket->SetCodeBonif("");
        FecharTicket->SetSave(op);
        FecharTicket->SetMaquina("FF00FF00FF00");
        FecharTicket->SetAbertura(true);
        FecharTicket->SetEncript(0);
        FecharTicket->SetHistoricoOperacao(HisFechar);
        QVariantList out;

        QList<BEFecharTicket> tick;
        tick = ti->FecharTichet(*FecharTicket, out);
        // XXX
        //delete ti;
        //delete FecharTicket
        return tick[0];
    }

    QString cleanupNumber(const QString &s) {
        return QString(s).remove(QRegExp("[^0-9]"));
    }
};

TicketHandler::TicketHandler() :
    d(new TicketHandlerPrivate) 
{ 
    qsrand((quint32)QTime::currentTime().msec());
    d->parent = this;
}

TicketHandler::~TicketHandler() { delete d; }

void 
TicketHandler::on_newConfirm()
{
    QString dbconname(this->metaObject()->className());
    { 
        QSqlDatabase db = QSqlDatabase::addDatabase("QMYSQL", dbconname);
        if (! db.isOpen()) {
            db.setHostName("127.0.0.1");
            db.setDatabaseName("ticket");
            db.setUserName("root");
            db.setPassword("");
        }
    }

    bool error = false;
    QString errmsg;
    QString ticket_id = d->randomTicketNumber();
    qreal value = d->cleanupNumber(request()["ticket_value"].toString()).toDouble();
    value = qreal(value / 100);
    QString ticket_value = QString::number(value, 'f', 2);
    DEBUGME() << "ticket_value" << ticket_value;

#if 0
    // XXX 
    // and what about database connection? and all other resources?
    if (value == 0) {
      return;
    }
#endif

    try {

        QVariantList params, out;
        params << 1 << false;
        DALTicket *dao = new DALTicket(dbconname);
        QList<BEObterExpiracaoTicket> dataexpiration = dao->obterExpiracaoTicket(params);


        if (value > dataexpiration[0].Valor().toDouble())
        {
           QString errmsg = "Limit value allowed exceeded";
           response()->next_state = TicketKeyboard;
           setErrCod(1);
           return onError(errmsg);
        }

        params.clear();
        out.clear();

        QString currentState = request()["state"].toString();
        if (currentState == "TicketKeyboard"){

            response()->next_state = TicketDialogConfirm;
            return onSuccess("on_newConfirm");

        }

        BEHistoricoOperacao histop;
        histop.SetCodTicket(ticket_id);
        histop.SetDescOperacao(QString("Create: %1 Net: %2")
                            .arg(ticket_id)
                            .arg(ticket_value));
        histop.SetCPF("3333333");
        histop.SetCodigoOperacao(1);
        histop.SetDescTabela("Create Ticket");
        histop.SetCodigoUsuario(1);
        histop.SetIDTRansacao(""); // to be discarded

        // create ticket
        BENovoMovimento NewMovimento;
        NewMovimento.SetCode(ticket_id);
        //NewMovimento.SetEncript(0);                 // to be discarded
        NewMovimento.SetEntrada(ticket_value);
        NewMovimento.SetTipoMov(1);                 // createTicket
        NewMovimento.SetMaquina("FF00FF00FF00");
        NewMovimento.SetHistoricoOperacao(histop);



        dao->CreateNewTicket(NewMovimento, out);
    } catch (Exception ex) {
        error = true;
        errmsg = ex.Message();
        response()->next_state = TicketKeyboard;
    }

    QSqlDatabase::database(dbconname).close();
    QSqlDatabase::removeDatabase(dbconname);

    if (error)
        return onError(errmsg);

    QDateTime now = QDateTime::currentDateTime();
    DEBUGME() << "success ticket_id" << ticket_id;
    d->printNewTicket(ticket_id, ticket_value, (now.date().toString("MM.dd.yyyy ") + now.time().toString("hh:mm:ss ap")));
    (*response())["ticket_id"] = ticket_id;
    (*response())["ticket_value"] = ticket_value;
    response()->next_state = TicketKeyboard;
    return onSuccess("on_newConfirm");
}

void 
TicketHandler::on_addCreditButton()
{
    response()->next_state = TicketAddCreditKeyboard;
    return onSuccess("on_addCreditButton");
}

void
TicketHandler::on_newAddConfirm()
{
    QString dbconname(this->metaObject()->className());
    {
        QSqlDatabase db = QSqlDatabase::addDatabase("QMYSQL", dbconname);
        if (! db.isOpen()) {
            db.setHostName("127.0.0.1");
            db.setDatabaseName("ticket");
            db.setUserName("root");
            db.setPassword("");
        }
    }

    QString errmsg;
    bool error = false;
    /*
     * XXX 
     * here in c++ we handle states as int not strings, please fix it whenever
     * possible
     */
    QString currentState = request()["state"].toString();
    QString tempcodeTicket = request()["value_display"].toString().replace(" ", "");

    if (tempcodeTicket.length() < 7 && currentState == "TicketAddCreditKeyboard") {
        errmsg = "The Number of the Ticket must be composed of 7 digits";
        response()->next_state = TicketAddCreditKeyboard;
        setErrCod(1);
        onError(errmsg);
        return;
    }

    try {

        //padrao americano
        QString valueToAddTicket = request()["value_display"].toString().replace("$", "").replace(" ", "").replace(",", "");
        if (valueToAddTicket == 0)
        {
           return;
        }


        DALTicket *dao = new DALTicket(dbconname);


        if (currentState == "TicketAddCreditKeyboard") {
            listInfoTicket = dao->VerificaNumeroTicket(request()["value_display"].toString().replace(" ", ""));
            codeTicket = request()["value_display"].toString().replace(" ", "");
            codTicketToPrint = codeTicket.toAscii().data();
            response()->insert("currentbalanceticketnumber",QString("%1 %2").arg("$").arg(d->formatValue(listInfoTicket[0].Saldo().toDouble())));
            response()->insert("ticketnumber",(QString("%1 %2").arg(codTicketToPrint.substr(0, 4).c_str()).arg(codTicketToPrint.substr(4, 3).c_str())));
            response()->next_state = TicketAddCredit;
            return onSuccess("on_newAddConfirm");
        }

        if (currentState == "TicketAddCredit") {

          response()->next_state = TicketAddCreditDialogConfirm;
          response()->insert("ticketnumber",(QString("%1 %2").arg(codTicketToPrint.substr(0, 4).c_str()).arg(codTicketToPrint.substr(4, 3).c_str())));
          return onSuccess("on_newAddConfirm");
        }

         BEHistoricoOperacao  His;
         His.SetCodTicket(codeTicket);
         His.SetDescOperacao("Add Credit: "+codeTicket+" Value: "+ valueToAddTicket);
         His.SetCPF("3333333");
         His.SetCodigoOperacao(2);
         His.SetDescTabela("Create Ticket");
         His.SetCodigoUsuario(1);
         His.SetIDTRansacao("");
         His.SetMaquina("F04DA2E5208C");

         //Adicionar Credito Ticket
         BENovoMovimento AddNewMovimento;
         AddNewMovimento.SetCode(codeTicket);
         AddNewMovimento.SetEntrada(valueToAddTicket);
         AddNewMovimento.SetMaxEntrada("100000.00");
         AddNewMovimento.SetTipoMov(1);
         AddNewMovimento.SetMaquina("F04DA2E5208C");
         AddNewMovimento.SetHistoricoOperacao(His);

         QDateTime now = QDateTime::currentDateTime();
         QList<BENovoMovimento> list =  dao->NovoMovimento(AddNewMovimento);
         codTicketToPrint = codeTicket.toAscii().data();

         d->printAddCreditTicket((QString("%1 %2").arg(codTicketToPrint.substr(0, 4).c_str()).arg(codTicketToPrint.substr(4, 3).c_str())),
                                 list[0].Fecha().replace("T", " "),
                                 (now.date().toString("MM.dd.yyyy ") + now.time().toString("hh:mm:ss ap")),
                                 d->formatValue(list[0].Saldo().toDouble()),
                                 list[0].DiaVencimento());
         delete dao;
       } catch(Exception ex) {

           response()->next_state = TicketAddCreditKeyboard;
            error = true;
            int erroNumber = ex.errorNumber();
            switch (erroNumber) {
            case 142:
            errmsg = "Ticket not active or no existent";
                break;
            case 66 :
            errmsg = "Limit value allowed exceeded";

            default:
                break;
            }
            setErrCod(erroNumber);

    }

    QSqlDatabase::database(dbconname).close();
    QSqlDatabase::removeDatabase(dbconname);

    if (error)
        return onError(errmsg);

    errmsg = "on_addCredit";
    response()->next_state = TicketAddCreditKeyboard;
    return onSuccess(errmsg);
}

void 
TicketHandler::on_addValidateCode()
{
    // onSuccess
    response()->next_state = TicketAddCreditKeyboard;
#if 0
    // onFailure
    response()->next_state = request()->current_state;
#endif

    return onSuccess("on_addValidateCode");
}

void
TicketHandler::on_newTicket()
{
    // onSuccess
    response()->next_state = TicketKeyboard;

#if 0
    // onFailure
    response()->next_state = request()->current_state;
#endif

    return onSuccess("on_addCredit");
}

void 
TicketHandler::on_addCredit()
{
    // onSuccess
    response()->next_state = TicketAddCreditKeyboard;

#if 0
    // onFailure
    response()->next_state = request()->current_state;
#endif

    return onSuccess("on_addCredit");
}

void 
TicketHandler::on_closeTicketButton()
{
    response()->next_state = TicketCloseCodeKeyboard;
    return onSuccess("on_closeTicketButton");
}

void 
TicketHandler::on_closeValidateCode()
{
    QString ticket_id = d->cleanupNumber(request()["ticket_id"].toString());
    DEBUGME() << "ticket_id" << ticket_id;
    bool success = d->closeTicket(ticket_id, (*response()));

    if (! success) {
        response()->next_state = request().current_state;
        return;
    }

    response()->next_state = TicketCloseConfirm;
    return onSuccess("on_closeValidateCode");
}

void
TicketHandler::on_closeConfirm()
{
    QString ticket_id = d->cleanupNumber(request()["ticket_id"].toString());
    DEBUGME() << "ticket_id" << ticket_id;
    bool success = d->closeTicket(ticket_id, (*response()),
                                  TicketHandlerPrivate::Close);

    if (! success) {
        response()->next_state = request().current_state;
        return;
    }

    d->printCloseTicket((*response()));
    response()->next_state = TicketCloseCodeKeyboard;
    return onSuccess("on_closeConfirm");
}

void
TicketHandler::on_closeBack()
{
    response()->next_state = TicketCloseCodeKeyboard;
    return onSuccess("on_closeBack");
}
