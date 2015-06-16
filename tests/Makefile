#
#	$Id$

# qt config
export QTDIR?=/usr
export TOPDIR?=${PWD}/..
export QMAKE=${QTDIR}/bin/qmake

TESTS_SOURCES=	$(shell ls test*.cpp)
TESTS_TARGETS=	$(TESTS_SOURCES:.cpp=)

TESTS_DEPS+=	libcasapplication.a

QMAKEFILES=$(TESTS_SOURCES:.cpp=.makefile)
QMAKEPROS=$(TESTS_SOURCES:.cpp=.pro)

all: build 

.PHONY: buildlibs
buildlibs:
	${MAKE} "QMAKEFILE_OPTS+=\"CONFIG += staticlib\"" \
		-C ${TOPDIR}/lib/casapplication
	( cd ${TOPDIR}/lib; \
		${QMAKE} "CONFIG += staticlib"; \
		${MAKE}; \
	)

.PHONY: build
build: ${TESTS_TARGETS}

libcasapplication.a: buildlibs
	install -m 644 ${TOPDIR}/lib/casapplication/libcasapplication.a ${PWD}

.PHONY: ${TESTS_TARGETS}
${TESTS_TARGETS}: ${QMAKEFILES} ${TESTS_SOURCES} ${TESTS_DEPS}
	${MAKE} -f $@.makefile

${QMAKEFILES}: ${QMAKEPROS}
	${QMAKE} -makefile \
		$(@:.makefile=.pro) \
		-o $@

${QMAKEPROS}: Makefile
	${QMAKE} -project \
		"LIBS += ${TESTS_DEPS}" \
		"LIBS += ${TOPDIR}/lib/CASCoreBusiness/libCASCoreBusiness.a" \
		"LIBS += ${TOPDIR}/lib/CasCoreData/libCasCoreData.a" \
		"LIBS += ${TOPDIR}/lib/CoreFatory/libCoreFatory.a" \
		"LIBS += ${TOPDIR}/lib/CoreCommom/libCoreCommom.a" \
		"INCLUDEPATH += ${TOPDIR}/lib" \
		"CONFIG += qtestlib" \
		"CONFIG += debug" \
		"OBJECTS_DIR=../.objs" \
		"MOC_DIR=../.mocs" \
		"QT += xml" \
		"QT += sql" \
		"QT += network" \
		"QT += declarative" \
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
cleanlibs:
	${MAKE} -C ${TOPDIR}/lib/casapplication distclean

.PHONY: clean
clean:
	-for i in ${QMAKEFILES}; do \
		[ -e $${i} ] && \
		${MAKE} -f $${i} clean; \
	done
	-rm -fv ${TESTS_TARGETS}
	-rm -fv ${TESTS_DEPS}
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
