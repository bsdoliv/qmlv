#ifndef CORECOMMOM_H
#define CORECOMMOM_H

#include "CoreCommom_global.h"
#include "xmlexception.h"

#include <QString>
#include <QtSql/QtSql>
#include <QIODevice>
#include <QtXml/QDomElement>
#include <QtXml/QDomDocument>
#include <QtXml/QDomNode>
#include <QMap>

#define QUOTE(string)  _QUOTE(string)
#define _QUOTE(string) #string
#define FILE_CONFIG  QCoreApplication::applicationDirPath()+"/XML/config.xml";

class CORECOMMOMSHARED_EXPORT CoreCommom
{
public:
    CoreCommom();
};

namespace ManagementConfiguration
{
class Configuration {
public:
    static QString Setting(const QString &key);
    static QMap<QString, QString> CredentialDataBase();
    static QMap<QString, QString> CredentialDataBase(const QString &conf); 
    static QString config_path;
};
}

#endif // CORECOMMOM_H
