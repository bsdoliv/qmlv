#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QString>
#include <QList>
#include <QMetaType>
#include <QStringBuilder>
#include <QtSql/QtSql>
#include <QMessageBox>
#include <stdexcept>
#include <exception>

//Impressao
#include <QPainter>
#include <QPrinter>
#include <QPrintDialog>
#include <QTextDocument>
#include <QAction>
#include <QTextEdit>
#include <QTextItem>
#include <QFont>
#include <QSize>


#include "CASCoreBusiness/cascorebusiness.h"
#include "CASCoreBusiness/BEPessoa.h"
#include "CasCoreData/DALPessoa.h"
#include "CasCoreData/dalclient.h"
#include "CASCoreBusiness/beclient.h"
#include "CoreCommom/basebind.h"
#include "CoreFatory/corefatory.h"
#include "CoreCommom/corecommom.h"
#include "CoreCommom/sqlexception.h"
#include <Login/frmlogin.h>


using namespace std;
using namespace Model;
using namespace DataAcessLayer;

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow, public CoreCommom
{
    Q_OBJECT
    
public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();
    void multi(QVariantList& list);

    
private slots:
    void on_pushButton_clicked();
    void on_pushButton_2_clicked();
    void on_pushButton_3_clicked();
    void on_pushButton_4_clicked();
    void on_pushButton_5_clicked();
    void on_btnImprimir_clicked();
    void on_btnAdicionar_clicked();
    void on_btnFechar_clicked();

private:
    Ui::MainWindow *ui;
    QSqlDatabase db;
    QMessageBox msgBox;
    void DrawText(int x, int y, QString text, QPainter &painter, const QFont &font, const QPen &pen);
    int MargemCentralizada(QString text, QFont font);
    int MargemEsquerda(QString text, QFont font, int margemesquerda);
    int MargemDireita(QString text, QFont font, int margemdireita);


};

#endif // MAINWINDOW_H
