#ifndef CASVIEWBASE_H
#define CASVIEWBASE_H

#include <QObject>

#include "casdata.h"

class CASViewBase : public QObject
{
    Q_OBJECT
public:
    void render(CASData::ViewResponse *r);

    CASViewBase(QObject *);
};


#endif //! CASVIEWBASE_H
