QT       += core gui sql
QT       +=  sql

TARGET = CASCoreBusiness
TEMPLATE = lib

DEFINES += CASCOREBUSINESS_LIBRARY
CONFIG += ordered debug
CONFIG += staticlib

SOURCES += cascorebusiness.cpp \
    beclient.cpp \
    BEPessoa.cpp \
    BEHistoricoOperacao.cpp \
    BETicket.cpp \
    BEObterexpiracaoticket.cpp \
    BENovoMovimento.cpp \
    BEFecharticket.cpp

HEADERS += cascorebusiness.h\
    CASCoreBusiness_global.h \
    beclient.h \
    BEPessoa.h \
    BEHistoricoOperacao.h \
    BETicket.h \
    BEObterexpiracaoticket.h \
    BENovoMovimento.h \
    BEFecharticket.h

LIBS += -L$$PWD/../CoreCommom/ -lCoreCommom
INCLUDEPATH += $$PWD/..

# vim: set ft=cfg:
