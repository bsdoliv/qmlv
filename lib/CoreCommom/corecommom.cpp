#include "corecommom.h"

using namespace ManagementConfiguration;

CoreCommom::CoreCommom() { }

QString 
Configuration::Setting(const QString &key)
{
    QString errorStr, value;
    int errorLine;
    int errorColumn;

    QDomDocument doc;
    QFile file(QCoreApplication::applicationDirPath()+"/XML/config.xml");
    QIODevice *device = &file;

    if (file.exists()) { 
        if (!doc.setContent(device, true, &errorStr, &errorLine,&errorColumn)) {
           throw Xmlexception(errorStr,errorColumn,errorLine);
        } 
        QDomElement root = doc.documentElement(); 
        if (root.tagName() != "configuration")
            throw Xmlexception("Arquivo nao e de configuracao",0,0); 

        QDomNode node = root.firstChild(); 
        while (!node.isNull()) {
            if (node.toElement().tagName() == "settings") {
                QDomNode childNode = node.firstChild(); 
                while (!childNode.isNull()) { 
                    if (childNode.toElement().attribute("key") == key) {
                        value = childNode.toElement().attribute("value");
                        break;
                    } 
                    childNode = childNode.nextSibling();
                } 
            } 
            node = node.nextSibling();
        }
    } else {
        throw Xmlexception("Arquivo nao existente",0,0);
    } 
    return value;
}

QString Configuration::config_path = "";

QMap<QString, QString>
Configuration::CredentialDataBase(const QString &conf)
{
    config_path = conf;
    return CredentialDataBase();
}

QMap<QString, QString>
Configuration::CredentialDataBase()
{
    QMap<QString, QString> creditial;

    QString errorStr;
    int errorLine;
    int errorColumn;

    QDomDocument doc;
    QFile file(config_path.isEmpty() ? 
               QCoreApplication::applicationDirPath()+"/XML/config.xml" :
               config_path);
    QIODevice *device = &file;
    QDomNode childNodeTemp;

    if (file.exists()) {

     if (!doc.setContent(device, true, &errorStr, &errorLine,&errorColumn))
       {
           throw Xmlexception(errorStr,errorColumn,errorLine);
       }

     QDomElement root = doc.documentElement();

     if (root.tagName() != "configuration")
         throw Xmlexception("Arquivo nao e de configuracao",0,0);

     QDomNode node = root.firstChild();


     while (!node.isNull())
     {
         if (node.toElement().tagName() == "CredentialDataBase")
          {
             QDomNode childNode = node.firstChild();

             while (!childNode.isNull())
             {

                 if (childNode.toElement().tagName() == "drivertype")
                 {
                     childNodeTemp = childNode.firstChild();

                     while (!childNodeTemp.isNull())
                     {
                         if (childNodeTemp.nodeType() == QDomNode::TextNode)
                         {
                             creditial.insert("drivertype",childNodeTemp.toText().data());
                             break;
                         }

                         childNodeTemp = childNodeTemp.nextSibling();
                     }

                 }

                 if (childNode.toElement().tagName() == "Adresshost")
                 {
                     childNodeTemp = childNode.firstChild();

                     while (!childNodeTemp.isNull())
                     {
                         if (childNodeTemp.nodeType() == QDomNode::TextNode)
                         {
                             creditial.insert("Adresshost",childNodeTemp.toText().data());
                             break;
                         }

                         childNodeTemp = childNodeTemp.nextSibling();
                     }
                 }

                 if (childNode.toElement().tagName() == "DataBase")
                 {
                     childNodeTemp = childNode.firstChild();

                     while (!childNodeTemp.isNull())
                     {
                         if (childNodeTemp.nodeType() == QDomNode::TextNode)
                         {
                             creditial.insert("DataBase",childNodeTemp.toText().data());
                             break;
                         }

                         childNodeTemp = childNodeTemp.nextSibling();
                     }
                 }

                 if (childNode.toElement().tagName() == "UserDataBase")
                 {
                     childNodeTemp = childNode.firstChild();

                     while (!childNodeTemp.isNull())
                     {
                         if (childNodeTemp.nodeType() == QDomNode::TextNode)
                         {
                             creditial.insert("UserDataBase",childNodeTemp.toText().data());
                             break;
                         }

                         childNodeTemp = childNodeTemp.nextSibling();
                     }
                 }

                 if (childNode.toElement().tagName() == "Password")
                 {
                     childNodeTemp = childNode.firstChild();

                     while (!childNodeTemp.isNull())
                     {
                         if (childNodeTemp.nodeType() == QDomNode::TextNode)
                         {
                             creditial.insert("Password",childNodeTemp.toText().data());
                             break;
                         }

                         childNodeTemp = childNodeTemp.nextSibling();
                     }

                 }


                 childNode = childNode.nextSibling();
             }

         }

         node = node.nextSibling();
     }
    } else {
        throw Xmlexception("Arquivo nao existente",0,0);
    }
    return creditial;
}
