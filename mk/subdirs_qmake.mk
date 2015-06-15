export QMAKE=${QTDIR}/bin/qmake

.PHONY: subdirs_qmake_build
subdirs_qmake_build:
	@for w in ${SUBDIRS_QMAKE}; do \
		( [ -d $${w} ] || exit 1; \
			cd $${w}; \
			if [ -e *.pro ]; then \
				${QMAKE} -makefile -o build.makefile ${QMAKEOPTS} && \
				${MAKE} -f build.makefile; \
			else \
				${QMAKE} -project && ${QMAKE} -makefile && ${MAKE}; \
			fi; \
		); \
	done
			
.PHONY: subdirs_qmake_distclean
subdirs_qmake_distclean:
	@for w in ${SUBDIRS_QMAKE}; do \
		( [ -d $${w} ] || exit 1; \
			cd $${w}; \
			if [ -e build.makefile ]; then \
				${MAKE} -f build.makefile distclean; \
				rm -fv build.makefile; \
			fi; \
			if [ -e Makefile ]; then \
				${MAKE} distclean; \
			else \
				echo "$${w} nothing to clean here"; true; \
			fi; \
		); \
	done

# vim: set ts=8 sw=8 noet:
