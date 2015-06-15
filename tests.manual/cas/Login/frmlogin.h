#ifndef FRMLOGIN_H
#define FRMLOGIN_H

#include <QMainWindow>
#include <QMessageBox>
#include <QtSql/QtSql>

#include "CoreFatory/corefatory.h"
#include "CoreCommom/corecommom.h"
#include "CoreCommom/exception.h"
#include "CasCoreData/DALPessoa.h"
#include "CasCoreData/DALTticket.h"
#include "CASCoreBusiness/BEPessoa.h"
#include "CASCoreBusiness/BENovomovimento.h"
#include "CASCoreBusiness/BEhistoricooperacao.h"


using namespace ManagementConfiguration;
using namespace Fatory;
using namespace DataAcessLayer;

namespace Ui {
class frmLogin;
}

class frmLogin : public QMainWindow
{
    Q_OBJECT
    
public:

    explicit frmLogin(QWidget *parent = 0);
    ~frmLogin();


private slots:
    void on_btnOk_clicked();
    void on_btnCancel_clicked();


private:
    Ui::frmLogin *ui;
    QSqlDatabase db;
};

#endif // FRMLOGIN_H
