#
GBS9_0_INSTALL_DIR="/usr/didbs/current/gbs9_1"
GBS9_1_INSTALL_DIR="$INSTALLDIR/gbs9_1"

CC="gcc"
CXX="g++"
CPPFLAGS="$DIDBS_MP_CPPFLAGS -I$INSTALLDIR/include"
CFLAGS="$DIDBS_ISA_SWITCH -O2"
#CFLAGS="$DIDBS_ISA_SWITCH -g -O0"
CXXFLAGS="$CFLAGS"
SHELL="$INSTALLDIR/bin/bash"
SHELL_PATH="$SHELL"
CONFIG_SHELL="$SHELL"
MAKE="$INSTALLDIR/bin/make"
PERL="$INSTALLDIR/bin/perl"
PERL_PATH="$INSTALLDIR/bin/perl"
PATH="$GBS9_0_INSTALL_DIR/bin:$PATH"
#MAKEINFO=missing
export CC CXX CPPFLAGS CFLAGS CXXFLAGS LDFLAGS SHELL SHELL_PATH CONFIG_SHELL MAKE PERL PERL_PATH PATH GBS9_0_INSTALL_DIR GBS9_1_INSTALL_DIR MAKEINFO
if [ "ne$DIDBS_LIBDIR" == "nelib32" ]; then
    LD_LIBRARYN32_PATH="$GBS9_1_INSTALL_DIR/$DIDBS_LIBDIR:$GBS9_0_INSTALL_DIR/$DIDBS_LIBDIR:$INSTALLDIR/lib32"
    PKG_CONFIG_PATH="$INSTALLDIR/lib32/pkgconfig"
    export LD_LIBRARYN32_PATH PKG_CONFIG_PATH
else
    LD_LIBRARYN64_PATH="$GBS9_1_INSTALL_DIR/$DIDBS_LIBDIR:$GBS9_0_INSTALL_DIR/$DIDBS_LIBDIR:$INSTALLDIR/lib64"
    PKG_CONFIG_PATH="$INSTALLDIR/lib64/pkgconfig"
    export LD_LIBRARYN64_PATH PKG_CONFIG_PATH
fi
