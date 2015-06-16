#include <QApplication>
#include <QDebug>
#include <QGraphicsObject>
#include "qmlapplicationviewer.h" 

#define logInfo() \
    qWarning() << Q_FUNC_INFO

static QVariant
changeState(const QObject *o, QString state)
{
    QVariant retval;
    QMetaObject::invokeMethod(const_cast<QObject *>(o), "changeState",
                              Q_RETURN_ARG(QVariant, retval),
                              Q_ARG(QVariant, state));
    return retval;
}

class Controller : public QObject
{
    Q_OBJECT
public:
    QObject *mainWindow;

public slots:
    void on_loginSubmitted(QVariant m)
    {
        Q_UNUSED(m);
        logInfo() << "change state";
        logInfo() << "sender" << sender();
        changeState(mainWindow, "home");
    }

    void on_homeButtonClicked()
    {
        logInfo() << "change state";
        logInfo() << "sender" << sender();
        changeState(mainWindow, "home");
    }

    void on_ticketButtonClicked()
    {
        logInfo() << "change state";
        logInfo() << "sender" << sender();
        changeState(mainWindow, "ticket");
    }
};

int
main(int argc, char **argv)
{
    QApplication casgui(argc, argv);
    qApp->setApplicationName(qApp->argv()[0]);

#if 0
    logInfo() << qApp->argc();
    logInfo() << qApp->argv();
#endif
    QmlApplicationViewer viewer;
    viewer.setOrientation(QmlApplicationViewer::ScreenOrientationAuto);
//    viewer.setMainQmlFile(QLatin1String("qml/login/login.qml"));
    viewer.setMainQmlFile(QLatin1String("qml/main.qml"));
    viewer.showExpanded();

    Controller obj;

    QObject *rootObject = dynamic_cast<QObject *>(viewer.rootObject());
#if 0
    logInfo() << "find casLoginInstance" 
        << rootObject->findChild<QObject*>("casLoginInstance");
#endif

    QObject *o = rootObject->findChild<QObject*>("loginQmlView");
    casgui.connect(o, SIGNAL(loginSubmit(QVariant)), &obj,
                   SLOT(on_loginSubmitted(QVariant)));

    o = rootObject->findChild<QObject*>("casTicketInstance");
    casgui.connect(o, SIGNAL(homeButtonClicked()), &obj,
                   SLOT(on_homeButtonClicked()));

    o = rootObject->findChild<QObject*>("homeQmlView");
    casgui.connect(o, SIGNAL(ticketButtonClicked()), &obj,
                   SLOT(on_ticketButtonClicked()));

    obj.mainWindow = rootObject;
#if 0
    logInfo() << "find mainWindow"
        << rootObject->findChild<QObject*>("mainWindow");

    foreach (QObject *o, rootObject->children()) {
        logInfo() 
            << "object" << o;
            //<< "dynamicPropertyNames" << o->dynamicPropertyNames();
        o->dumpObjectInfo();
            << "objectName" << o->objectName() 
            << "property(id)" << o->property("id").toString();
    }
#endif

    changeState(rootObject, "login");
    return casgui.exec();
}

#include "test_casgui.moc"
