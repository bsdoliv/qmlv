#ifndef XMLEXCEPTION_H
#define XMLEXCEPTION_H

#include "exception.h"

class Xmlexception: public Exception
{

private:
    int linerror;
    int columnErro;

public:
    Xmlexception(const QString& sourcemessage,
                 const int &columnerro,
                 const int  &lineError);

   ~Xmlexception() throw(){}

    virtual int Lineerro() throw();
    virtual int Colunmerro() throw();

};

#endif // XMEXCEPTION_H
