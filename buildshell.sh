#!/bin/env bash

SCRIPTLOCATION=$1;
PACKAGEID=$2;
PACKAGEDIR=$3;
BUILDDIR=$4;
INSTALLDIR=$5;
ENVMODIFS=$6;
PS1='[didbsshell \u@\h \W]\$ '
export SCRIPTLOCATION PACKAGEID PACKAGEDIR BUILDDIR INSTALLDIR ENVMODIFS PS1
echo "Build shell and environment ready."
echo "SCRIPTLOCATION=$SCRIPTLOCATION"
echo "PACKAGEID=$PACKAGEID"
echo "PACKAGEDIR=$PACKAGEDIR"
echo "BUILDDIR=$BUILDDIR"
echo "INSTALLDIR=$INSTALLDIR"
echo "ENVMODIFS=$ENVMODIFS"

cd $PACKAGEDIR || exit 1
. $ENVMODIFS
cd $BUILDDIR || exit 1
PWD=`pwd`
echo "Current directory is $PWD"
export PS1
exec bash --norc -i