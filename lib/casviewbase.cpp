#include "casviewbase.h"

CASViewBase::CASViewBase(QObject *o) :
    QObject(o)
{
    setObjectName(o->objectName());
}
