#ifndef CASAPPLICATION_H
#define CASAPPLICATION_H

#include <QApplication>

#include "casdata.h"

class CASApplicationPrivate;
class CASApplication : public QApplication
{ 
    Q_OBJECT
public:
    enum showMode {
        Normal,
        Maximized,
        FullScreen
    };
    CASApplication(int argc, char **argv);
    CASApplication(int argc, char **argv, enum showMode sm);

    void registerHandler(const QString &s, const QObject *dst);
    int  exec();
    void setDisplayQml(const QString &p);
    void setDisplayState(int s);
    void setDisplayStatesMap(const CASData::DisplayStatesMap *m);

protected:
    void init(int sm = Normal);

private slots:
    void router(CASData::ViewRequest *);
    void router(QVariant);
    void router();
    void renderView(const QString &, const CASData::ViewResponse *);
    QObject *lookupViewByName(const QString &);

private:
    CASApplicationPrivate *d;       
};

#endif //! CASAPPLICATION_H
