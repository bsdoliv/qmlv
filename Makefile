export TOPDIR=${PWD}
export QTDIR?=/opt/qt486

SUBDIRS_QMAKE += ${TOPDIR}/lib/CoreCommom
SUBDIRS_QMAKE += ${TOPDIR}/lib/CASCoreBusiness
SUBDIRS_QMAKE += ${TOPDIR}/lib/CoreFatory
SUBDIRS_QMAKE += ${TOPDIR}/lib/CasCoreData
SUBDIRS_QMAKE += ${TOPDIR}/bin/casui

PACKAGE=casui.tgz

include ${TOPDIR}/mk/subdirs_qmake.mk
include ${TOPDIR}/mk/db.mk

all: build

.PHONY: build
build: Makefile subdirs_qmake_build
	${MAKE} -C lib/casapplication

.PHONY: distclean
distclean: subdirs_qmake_distclean clean_tests clean_package
	${MAKE} -C lib/casapplication $@

.PHONY: clean_tests
clean_tests:
	${MAKE} -C tests.auto distclean
	${MAKE} -C tests.manual distclean

.PHONY: tests
tests: build
	${MAKE} -C tests.auto build
	${MAKE} -C tests.auto run

.PHONY: package
package: build ${PACKAGE}

${PACKAGE}:
	./scripts/build.sh -d ${PWD} -p -o $@

.PHONY: clean_package
clean_package:
	rm -fv ${PACKAGE}

# vim: ts=4 sw=4:
