#
GBS1_INSTALL_DIR="$INSTALLDIR/gbs1"
GBSTEST_INSTALL_DIR="$INSTALLDIR/gbstest"

CPPFLAGS="$DIDBS_CPPFLAGS -D_SGI_SOURCE"

#CC="gcc --std=c99 $DIDBS_CPPFLAGS -D_SGI_SOURCE"

CC=$DIDBS_CC
CFLAGS="$DIDBS_ARCH_CFLAGS -D_SGI_SOURCE $DIDBS_O3_IPA_CFLAGS $DIDBS_NOWARN_CFLAGS"
LDFLAGS="$DIDBS_ARCH_LDFLAGS $DIDBS_IPA_LDFLAGS $DIDBS_NOWARN_LDFLAGS"
CFLAGS="$DIDBS_ARCH_CFLAGS $DIDBS_O1_CFLAGS $DIDBS_NOWARN_CFLAGS"
LDFLAGS="$DIDBS_ARCH_LDFLAGS $DIDBS_NOWARN_LDFLAGS"

SHELL="$GBSTEST_INSTALL_DIR/bin/bash"
SHELL_PATH="$SHELL"
CONFIG_SHELL="$SHELL"
PATH="$GBSTEST_INSTALL_DIR/bin:$GBS1_INSTALL_DIR/bin:$PATH"
LD_LIBRARYN32_PATH="$GBSTEST_INSTALL_DIR/lib:$GBS1_INSTALL_DIR/lib:$LD_LIBRARYN32_PATH"
LD_LIBRARY_PATH="$GBSTEST_INSTALL_DIR/lib:$GBS1_INSTALL_DIR/lib:$LD_LIBRARY_PATH"
PKG_CONFIG_PATH="$INSTALLDIR/lib/pkgconfig"
export CC CFLAGS LDFLAGS SHELL SHELL_PATH CONFIG_SHELL PATH LD_LIBRARYN32_PATH LD_LIBRARY_PATH PKG_CONFIG_PATH GBS1_INSTALL_DIR GBSTEST_INSTALL_DIR