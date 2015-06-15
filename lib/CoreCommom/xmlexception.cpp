#include "xmlexception.h"

Xmlexception::Xmlexception(const QString &sourcemessage,
                           const int &columnerro,
                           const int &lineError)
    :Exception(0,sourcemessage,"")
{
    this->linerror = lineError;
    this->columnErro = columnerro;
}


int Xmlexception::Lineerro() throw()
{
   return this->linerror;
}

int Xmlexception::Colunmerro() throw()
{
  return this->columnErro;
}
