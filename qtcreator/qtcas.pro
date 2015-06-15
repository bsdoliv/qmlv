TEMPLATE = subdirs
CONFIG += ordered debug

# our var
CASLIBSPATH = $$PWD/../lib

INCLUDEPATH += $${CASLIBSPATH}

SUBDIRS += CASCoreCommon
SUBDIRS += CASCoreBusiness
SUBDIRS += CASCoreFactory
SUBDIRS += CASCoreData
SUBDIRS += casui

CASCoreBusiness.subdir = $${CASLIBSPATH}/CASCoreBusiness
CASCoreData.subdir = $${CASLIBSPATH}/CasCoreData
CASCoreCommon.subdir = $${CASLIBSPATH}/CoreCommom
CASCoreFactory.subdir = $${CASLIBSPATH}/CoreFatory

casui.file  = $${PWD}/../bin/casui/casui.pro
casui.depends = CASCoreBusiness
casui.depends = CASCoreData
casui.depends = CASCoreCommon
casui.depends = CASCoreFactory

# vim: set ts=4 sw=4 et ft=cfg:
