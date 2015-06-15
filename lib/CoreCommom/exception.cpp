#include "exception.h"

Exception::Exception(const int &numerro,
                     const QString& sourcemessage,
                     const QString& message)
{
   this->errornumber = numerro;
   this->sourcemessage = sourcemessage.toAscii().data();
   this->message =   message.toAscii().data();

}


const char* Exception::SourceMessage() const throw()
{
   return this->sourcemessage.c_str();
}

const char* Exception::Message() const throw()
{
   return this->message.c_str();
}

 int Exception::errorNumber()  throw()
{
  return this->errornumber;
}


