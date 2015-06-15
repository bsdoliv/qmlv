#include <QApplication>
#include "mainwindow.h"
#include  <Login/frmlogin.h>


int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;
    w.show();

//    frmLogin l;
//    l.showNormal();

    return a.exec();
}
