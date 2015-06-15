#!/usr/bin/env bash

export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}
for i in test*; do
	if [ -x ${i} -a x${i} != xrun-tests.sh ]; then
	    case "$1" in
		-convert )
		    eval ./${i} -xml | ./qtest-to-hudson.py "${i}" \
				> reports/${i}.xml
		    ;;
		-xml )
		    eval ./${i} -xml > reports/${i}.xml
		    ;;
		* )
            if [ $(grep ${i} < skip >/dev/null 2>&1; echo $?) -eq 1 ]; then
                eval ./${i}
            fi;
		    ;;
	    esac
	fi
done
