#ifndef SQLEXCEPTION_H
#define SQLEXCEPTION_H

#include "exception.h"

class SqlException: public Exception
{

private:
 char* errodrive;
 QSqlError::ErrorType errotype;

public:
    SqlException(const int& numerro,const QString& sourcemessage,
                 const QString& message,const QString& errodrive,
                 const QSqlError::ErrorType& errotype );

    virtual const char* Errodriver() const throw();
    virtual QSqlError::ErrorType ErroType() throw();

};

#endif // SQLEXCEPTION_H
