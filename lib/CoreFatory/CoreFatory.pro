QT       += core gui sql
QT       +=  sql
CONFIG += staticlib

TARGET = CoreFatory
TEMPLATE = lib

DEFINES += COREFATORY_LIBRARY

SOURCES += corefatory.cpp \
    util.cpp

HEADERS += corefatory.h\
        CoreFatory_global.h \
    util.h

INCLUDEPATH += ..

LIBS += -L../CASCoreBusiness/ -lCASCoreBusiness
LIBS += -L../CoreCommom/ -lCoreCommom
