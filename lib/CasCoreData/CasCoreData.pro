QT       += core gui sql
QT       +=  sql

TARGET = CasCoreData
TEMPLATE = lib
CONFIG += staticlib

DEFINES += CASCOREDATA_LIBRARY

SOURCES += cascoredata.cpp \
    daoclient.cpp \
    DAOPessoa.cpp \
    DALTicket.cpp \
    DALHistoricoOperacao.cpp

HEADERS += cascoredata.h\
        CasCoreData_global.h \
        daoclient.h \
        DAOPessoa.h \
        DALTicket.h \
        DALHistoricoOperacao.h 

#        credentialdatabase.h

LIBS += -L$${PWD}/../CoreFatory/ -lCoreFatory
LIBS += -L$${PWD}/../CASCoreBusiness/ -lCASCoreBusiness

INCLUDEPATH += $${PWD}/..

# vim: set ft=cfg:
