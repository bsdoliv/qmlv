#ifndef UTIL_H
#define UTIL_H
#include <QString>
#include <QVariant>

namespace  Fatory{

class Util
{

public:
    Util();
     QString static GetCommand(QString &procName,const QVariantList& list);
     QVariantList static GetParameterOut(const QVariantList& list);
     QString static GetComandOut(QVariantList& list);

 };

}
#endif // UTIL_H
