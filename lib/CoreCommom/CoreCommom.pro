TARGET = CoreCommom
TEMPLATE = lib
QT  += xml
CONFIG += staticlib

DEFINES += CORECOMMOM_LIBRARY

SOURCES += corecommom.cpp \
    basebind.cpp \
    exception.cpp \
    sqlexception.cpp \
    xmlexception.cpp

HEADERS += corecommom.h\
        CoreCommom_global.h \
    basebind.h \
    exception.h \
    sqlexception.h \
    xmlexception.h

# vim: set ft=cfg:
