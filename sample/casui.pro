TEMPLATE = app
TARGET = casui

CONFIG      += debug
OBJECTS_DIR = .objs
MOC_DIR     = .mocs

QT += sql
QT += network
QT += declarative
QT += gui

CASLIBSPATH = $$PWD/../../lib
INCLUDEPATH += $${CASLIBSPATH}

# libcas stuff
LIBS += $${CASLIBSPATH}/casapplication/libcasapplication.a
LIBS += $${CASLIBSPATH}/CASCoreBusiness/libCASCoreBusiness.a
LIBS += $${CASLIBSPATH}/CasCoreData/libCasCoreData.a
LIBS += $${CASLIBSPATH}/CoreCommom/libCoreCommom.a
LIBS += $${CASLIBSPATH}/CoreFatory/libCoreFatory.a

#LIBS += -L$${CASLIBSPATH}/CASCoreBusiness -lCASCoreBusiness
#LIBS += -L$${CASLIBSPATH}/CasCoreData -lCasCoreData
#LIBS += -L$${CASLIBSPATH}/CoreCommom -lCoreCommom
#LIBS += -L$${CASLIBSPATH}/CoreFatory -lCoreFatory

unix: {
    QMAKE_LFLAGS += -Wl,--rpath=$${CASLIBSPATH}/CASCoreBusiness
    QMAKE_LFLAGS += -Wl,--rpath=$${CASLIBSPATH}/CasCoreData
    QMAKE_LFLAGS += -Wl,--rpath=$${CASLIBSPATH}/CoreCommom 
    QMAKE_LFLAGS += -Wl,--rpath=$${CASLIBSPATH}/CoreFatory 
    QMAKE_LFLAGS_RPATH=                        
}

casapplication.target   = $${CASLIBSPATH}/casapplication/libcasapplication.a
casapplication.commands = make -C $${CASLIBSPATH}/casapplication
PRE_TARGETDEPS          += $${CASLIBSPATH}/casapplication/libcasapplication.a
QMAKE_EXTRA_TARGETS     += casapplication
QMAKE_CLEAN             += $${CASLIBSPATH}/casapplication/libcasapplication.a

#casapplication_clean.commands   = make -C $${CASLIBSPATH}/casapplication distclean
#QMAKE_EXTRA_TARGETS             += casapplication_clean

include(casui.pri)

# vim: set ft=cfg:
