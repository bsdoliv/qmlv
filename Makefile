# qt config
export QTDIR?=/opt/qt486
QMAKE=${QTDIR}/bin/qmake

TARGET=qmlv
VERSION=0.1

QMAKEFILE=${TARGET}.makefile
QMAKEPRO=${TARGET}.pro

# dev build opts
QMAKEPRO_OPTS+="TARGET=${TARGET}"
QMAKEPRO_OPTS+="OBJECTS_DIR=./.objs"
QMAKEPRO_OPTS+="MOC_DIR=./.mocs"
QMAKEPRO_OPTS+="CONFIG += debug"
QMAKEPRO_OPTS+="CONFIG += staticlib"
QMAKEPRO_OPTS+="INCLUDEPATH += ${INCLUDEPATH}"
QMAKEPRO_OPTS+="QT += gui"
QMAKEPRO_OPTS+="QT += declarative"
QMAKEPRO_OPTS+= -t lib
QMAKEPRO_OPTS+= -nopwd
QMAKEPRO_OPTS+= -norecursive
QMAKEPRO_OPTS+= ${SRCS} ${HDRS}

SRCS=*.cpp
HDRS=*.h

all: build

#.PHONY: buildstatic
#buildstatic:

.PHONY: build
build: ${TARGET} 

.PHONY: ${TARGET}
${TARGET}: ${QMAKEFILE}
	${MAKE} -f $<

${QMAKEFILE}: ${QMAKEPRO}
	${QMAKE} -makefile ${QMAKEFILE_OPTS} -o $@ $<

${QMAKEPRO}: Makefile
	${QMAKE} -project ${QMAKEPRO_OPTS} -o $@ $<

.PHONY: distclean
distclean: clean prunebuild
	-[ -d .objs ] && \
		rmdir .objs
	-[ -d .mocs ] && \
		rmdir .mocs

.PHONY: clean
clean:
	-[ -e ${QMAKEFILE} ] && \
		${MAKE} -f ${QMAKEFILE} clean
	-rm -fv ${TARGET}
	-rm -fv ui_*.h
	-rm -fv lib${TARGET}.so*
	-rm -fv lib${TARGET}.a

.PHONY: prunebuild
prunebuild:
	-rm -fv ${QMAKEFILE}
	-rm -fv ${QMAKEPRO}
