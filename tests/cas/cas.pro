QT       += core gui
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = cas

CONFIG += ordered debug

TEMPLATE = app

SOURCES += main.cpp\
        mainwindow.cpp\
        Login/frmlogin.cpp

HEADERS  += mainwindow.h \
           Login/frmlogin.h

FORMS    += mainwindow.ui \
           Login/frmlogin.ui \

CASLIBSPATH = $$PWD/../../lib/

INCLUDEPATH += $${CASLIBSPATH}/

LIBS += -L$${CASLIBSPATH}/CASCoreBusiness -lCASCoreBusiness
LIBS += -L$${CASLIBSPATH}/CasCoreData -lCasCoreData
LIBS += -L$${CASLIBSPATH}/CoreCommom -lCoreCommom
LIBS += -L$${CASLIBSPATH}/CoreFatory -lCoreFatory

RESOURCES += \
    image.qrc
sources.files = $$SOURCES $$HEADERS $$RESOURCES $$FORMS  Images XML

INSTALLS += target sources

unix:{
  QMAKE_LFLAGS += -Wl,--rpath=$${CASLIBSPATH}/CASCoreBusiness
  QMAKE_LFLAGS += -Wl,--rpath=$${CASLIBSPATH}/CasCoreData
  QMAKE_LFLAGS += -Wl,--rpath=$${CASLIBSPATH}/CoreCommom 
  QMAKE_LFLAGS += -Wl,--rpath=$${CASLIBSPATH}/CoreFatory 
  QMAKE_LFLAGS_RPATH=                        
}
