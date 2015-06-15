#include "sqlexception.h"


SqlException::SqlException(const int &numerro, const QString &sourcemessage,
                           const QString &message, const QString &errodrive,
                           const QSqlError::ErrorType &errotype)
                           :Exception(numerro,sourcemessage,message )
{
  this->errodrive = errodrive.toAscii().data();
  this->errotype =  errotype;
}


const char* SqlException::Errodriver() const throw()
{
   return this->errodrive.c_str();
}


QSqlError::ErrorType SqlException::ErroType() throw()
{
   return this->errotype;
}
