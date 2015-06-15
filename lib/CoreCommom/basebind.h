#ifndef BASEBIND_H
#define BASEBIND_H

#include <QVariant>
#include <QString>
#include <QtSql/QtSql>
#include <QObject>

class BaseBind
{

public:
    BaseBind();


    virtual void bind(const QSqlRecord& record) =0;
    virtual ~BaseBind(){}

};

#endif // BASEBIND_H
