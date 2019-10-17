#
DIDBS_CURRENT_DIR="/usr/didbs/current"
DIDBS_GBS8_DIR="$DIDBS_CURRENT_DIR/gbs8_1"
GBS8_1_INSTALL_DIR="$INSTALLDIR/gbs8_1"

CC="gcc"
CXX="g++"
CFLAGS="$DIDBS_ISA_SWITCH $DIDBS_GCC_OPT_SWITCH"
CXXFLAGS="$CFLAGS"
LDFLAGS="$DIDBS_ISA_SWITCH"
PERL="$INSTALLDIR/bin/perl"
TEST_SHELL="$INSTALLDIR/bin/bash"
SHELL="$INSTALLDIR/bin/bash"
CONFIG_SHELL="$INSTALLDIR/bin/bash"
PATH="$GBS8_1_INSTALL_DIR/bin:$DIDBS_GBS8_DIR/bin:$PATH"
MAKEINFO=missing
STAGE1_CFLAGS="-g -O2"
export CC CXX CPPFLAGS CFLAGS CXXFLAGS LDFLAGS SHELL CONFIG_SHELL SHELL_PATH PERL PERL_PATH GBS8_1_INSTALL_DIR DIDBS_GBS8_DIR PATH MAKEINFO STAGE1_CFLAGS
if [ "ne$DIDBS_LIBDIR" == "nelib32" ]; then
    LD_LIBRARYN32_PATH="$GBS8_1_INSTALL_DIR/$DIDBS_LIBDIR:$DIDBS_GBS8_DIR/$DIDBS_LIBDIR:$DIDBS_CURRENT_DIR/$DIDBS_LIBDIR:$INSTALLDIR/lib32"
    PKG_CONFIG_PATH="$INSTALLDIR/lib32/pkgconfig"
    export LD_LIBRARYN32_PATH PKG_CONFIG_PATH
else
    LD_LIBRARYN64_PATH="$GBS8_1_INSTALL_DIR/$DIDBS_LIBDIR:$DIDBS_GBS8_DIR/$DIDBS_LIBDIR:$DIDBS_CURRENT_DIR/$DIDBS_LIBDIR:$INSTALLDIR/lib64"
    PKG_CONFIG_PATH="$INSTALLDIR/lib64/pkgconfig"
    export LD_LIBRARYN64_PATH PKG_CONFIG_PATH
fi
