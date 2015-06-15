#!/usr/bin/env bash

function do_pkg_cleanup()
{ 
    rm -rf ${tmproot}
}

function do_pkg_createdirs()
{
    mkdir -p ${tmpapproot}/bin
    mkdir -p ${tmpapproot}/etc
    mkdir -p ${tmpapproot}/log
    mkdir -p ${tmpapproot}/lib
}

function do_pkg_copyapp()
{
    local appdir=${1}
    install -m 755 ${appdir}/bin/casui/casui ${tmpapproot}/bin
    install -m 644 ${appdir}/db/deploy_cas_db_dump.sql ${tmpapproot}/lib
    install -m 644 ${appdir}/README.deploy ${tmpapproot}/
    cp -a ${appdir}/bin/casui/qml ${tmpapproot}/bin
    # XXX 
    # any other dependencies and configuration files should be listed for
    # deploy here
}

function do_pkg_createtar()
{
    local target=${1}
    tar -C ${tmproot} -zcvf ${target} .
}

function do_pkg()
{
#    set -x
    local target=${1}
    local appdir=${2}
    export tmproot="$(mktemp -d /tmp/casui-root-XXXX)"
    export tmpapproot="${tmproot}/casui"
    trap do_pkg_cleanup 0 1 2 3

    do_pkg_createdirs
    do_pkg_copyapp ${appdir}
    do_pkg_createtar ${target}
}

function main() {
    local do_package=0
    local target=""

    while getopts po:d: op; do
        case ${op} in 
        p)
            do_package=1
            ;;
        o)
            target=${OPTARG}
            ;;
        d)
            appdir=${OPTARG}
            ;;
        esac
    done

    if [ ${do_package} ]; then
        do_pkg ${target} ${appdir}
    fi
}

main "${@}"
