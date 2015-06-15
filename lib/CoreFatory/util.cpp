#include "util.h"

using namespace  Fatory;

Util::Util()
{
}


QString  Util::GetCommand(QString &procName, const QVariantList& list)
{
    QString comando = "call " + procName;
    qint32 contp = 0;
    qint32 totalp  = 0;

    if (const_cast<QVariantList*> (&list) != 0)
    {
        totalp = list.count() ;
    }


    if (totalp == 0)
    {
        return comando;
    }

    comando += "(";
    foreach(QVariant c, list)
    {
        if (c.toString().startsWith("@"))
        {
            if (contp == totalp-1)
            {
                comando += c.toString()+"";
            }
            else
            {
            comando += c.toString()+",";
            }

             ++contp;
             continue;
       }

        if ( (QString::compare(c.typeName(), "QString", Qt::CaseSensitive)) == 0 )
        {
            if (contp == totalp-1)
            {
                comando += "'"+c.toString()+"'";
            }
            else
            {
                comando += "'"+c.toString()+"',";
            }

        }
        else
        {
            if (contp == totalp-1)
            {
                comando += c.toString()+"";
            }
            else
            {
            comando += c.toString()+",";
            }
        }

       ++contp;
    }
     comando += ")";

     return comando;
}

QVariantList Util::GetParameterOut(const QVariantList &list)
{
    QVariantList Paramenterout;

    if (const_cast<QVariantList*> (&list) != 0)
    {
       foreach(QVariant c, list)
     {
        if (c.toString().startsWith("@"))
        {
            Paramenterout.push_back(c);
        }
      }
    }

    return  Paramenterout;
}

QString Util::GetComandOut(QVariantList& list)
{
   qint32 contp = 0;
   QString comando = "select ";
   qint32 totalp = list.count();


   foreach(QVariant c, list)
   {
       if (contp == totalp-1)
       {
           comando += " " + c.toString()+"";
       }
       else
       {
           comando += c.toString()+",";
       }

       contp++;
   }


  return comando;

}
