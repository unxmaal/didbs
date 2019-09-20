#
GBS4_1_INSTALL_DIR="/usr/didbs/current/gbs4_2"
GBS4_2_INSTALL_DIR="$INSTALLDIR/gbs4_2"

CC=gcc
CXX=g++
CFLAGS="$DIDBS_ISA_SWITCH -g -O2"
CXXFLAGS="$CFLAGS"
SHELL="$INSTALLDIR/bin/bash"
CONFIG_SHELL="$INSTALLDIR/bin/bash"
SHELL_PATH="$INSTALLDIR/bin/bash"
PERL="$INSTALLDIR/bin/perl"
PERL_PATH="$INSTALLDIR/bin/perl"
PATH="$GBS4_2_INSTALL_DIR/bin:$GBS4_1_INSTALL_DIR/bin:$PATH"

#MAKEINFO=missing
export CC CXX CPPFLAGS CFLAGS CXXFLAGS LDFLAGS SHELL CONFIG_SHELL SHELL_PATH PERL PERL_PATH GBS4_2_INSTALL_DIR GBS4_1_INSTALL_DIR PATH MAKEINFO
if [ "ne$DIDBS_LIBDIR" == "nelib32" ]; then
    LD_LIBRARYN32_PATH="$GBS4_2_INSTALL_DIR/$DIDBS_LIBDIR:$GBS4_1_INSTALL_DIR/$DIDBS_LIBDIR:$INSTALLDIR/lib32"
    PKG_CONFIG_PATH="$INSTALLDIR/lib32/pkgconfig"
    export LD_LIBRARYN32_PATH PKG_CONFIG_PATH
else
    LD_LIBRARYN64_PATH="$GBS4_2_INSTALL_DIR/$DIDBS_LIBDIR:$GBS4_1_INSTALL_DIR/$DIDBS_LIBDIR:$INSTALLDIR/lib64"
    PKG_CONFIG_PATH="$INSTALLDIR/lib64/pkgconfig"
    export LD_LIBRARYN64_PATH PKG_CONFIG_PATH
fi
