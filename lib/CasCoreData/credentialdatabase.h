#ifndef CREDENTIALDATABASE_H
#define CREDENTIALDATABASE_H
#include <QString>

class CredentialDataBase
{

public:
    CredentialDataBase();

   static QString GetNameHost();
   static QString GetNameDataBase();
   static QString GetUserDataBase();
   static QString GetPasswordDataBase();

};

#endif // CREDENTIALDATABASE_H
