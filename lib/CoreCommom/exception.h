#ifndef EXCEPTION_H
#define EXCEPTION_H

#include <iostream>
#include <exception>

#include <QString>
#include <QtSql/QtSql>

class Exception : public std::exception
{

private:
    int errornumber;
    std::string sourcemessage;
    std::string message;

public:

    Exception(const int& numerro,
              const QString& sourcemessage,
              const QString& message);
    ~Exception() throw(){}

    virtual int errorNumber() throw();
    virtual const char* SourceMessage() const throw();
    virtual const char* Message() const throw();
};

#endif // EXCEPTION_H
