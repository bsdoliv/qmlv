#
#	$Id$

# qt config
export QTDIR?=/usr
export TOPDIR?=${PWD}/..
export QMAKE=${QTDIR}/bin/qmake

all: build 

TESTS_SOURCES=$(shell ls test*.cpp)
TESTS_TARGETS=$(TESTS_SOURCES:.cpp=)

QMAKEFILES=$(TESTS_SOURCES:.cpp=.makefile)
QMAKEPROS=$(TESTS_SOURCES:.cpp=.pro)

SUBDIRS_QMAKE += ${TOPDIR}/lib/CASCoreBusiness
SUBDIRS_QMAKE += ${TOPDIR}/lib/CasCoreData
SUBDIRS_QMAKE += ${TOPDIR}/lib/CoreCommom
SUBDIRS_QMAKE += ${TOPDIR}/lib/CoreFatory
QMAKEOPTS += "CONFIG += staticlib"
include ${TOPDIR}/mk/subdirs_qmake.mk

.PHONY: buildlibs
buildlibs: subdirs_qmake_build
	${MAKE} "QMAKEFILE_OPTS+=\"CONFIG += staticlib\"" \
		-C ${TOPDIR}/lib/casapplication

.PHONY: build
build: ${TESTS_TARGETS}

.PHONY: ${TESTS_TARGETS}
${TESTS_TARGETS}: buildlibs ${QMAKEFILES} ${TESTS_SOURCES}
	${MAKE} -f $@.makefile

.PHONY: run
run: build
	./run-tests.sh

${QMAKEFILES}: ${QMAKEPROS}
	${QMAKE} -makefile \
		$(@:.makefile=.pro) \
		-o $@

${QMAKEPROS}: Makefile
	${QMAKE} -project \
		"LIBS += ${TOPDIR}/lib/casapplication/libcasapplication.a" \
		"LIBS += ${TOPDIR}/lib/CASCoreBusiness/libCASCoreBusiness.a" \
		"LIBS += ${TOPDIR}/lib/CasCoreData/libCasCoreData.a" \
		"LIBS += ${TOPDIR}/lib/CoreCommom/libCoreCommom.a" \
		"LIBS += ${TOPDIR}/lib/CoreFatory/libCoreFatory.a" \
		"INCLUDEPATH += ${TOPDIR}/lib" \
		"CONFIG += qtestlib" \
		"CONFIG += debug" \
		"OBJECTS_DIR=.objs" \
		"MOC_DIR=.mocs" \
		"DEFINES += QT_NO_DEBUG_OUTPUT" \
		"DEFINES += QT_NO_WARNING_OUTPUT" \
		"QT += sql" \
		"QT += xml" \
		"QT += network" \
		"QT -= declarative" \
		"QT += gui" \
		-nopwd \
		-norecursive \
		$(@:.pro=.cpp) \
		-o $@

.PHONY: distclean
distclean: cleanlibs clean prunebuild
	-[ -d .objs ] && \
		rmdir .objs
	-[ -d .mocs ] && \
		rmdir .mocs \

.PHONY: cleanlibs
cleanlibs: subdirs_qmake_distclean
	-${MAKE} -C ${TOPDIR}/lib/casapplication distclean

.PHONY: clean
clean:
	-for i in ${QMAKEFILES}; do \
		[ -e $${i} ] && \
		${MAKE} -f $${i} clean; \
	done
	-rm -fv ${TESTS_TARGETS}
	-for i in ${TESTS_TARGETS}; do \
		[ -d $${i}.app ] && \
			rm -rfv $${i}.app ;\
	done

.PHONY: prunebuild
prunebuild:
	-for i in ${QMAKEFILES}; do \
		[ -e $${i} ] && \
		rm -fv $${i};\
	done
	-for i in ${QMAKEPROS}; do \
		[ -e $${i} ] && \
		rm -fv $${i};\
	done

# vim: set tw=78:
