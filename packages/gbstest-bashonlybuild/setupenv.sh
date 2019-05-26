#
GBSTEST_INSTALL_DIR="$INSTALLDIR/gbstest"

CC="gcc --std=c99 $DIDBS_CPPFLAGS"
CXX="g++ $DIDBS_CPPFLAGS"
CPPFLAGS="$DIDBS_CPPFLAGS -I$INSTALLDIR/include"

CFLAGS="$DIDBS_ARCH_CFLAGS -g0 -O3"
#CFLAGS="$DIDBS_ARCH_CFLAGS -g3 -O0"

CXXFLAGS="$CFLAGS"
LDFLAGS="-L$INSTALLDIR/lib"

PATH="$GBSTEST_INSTALL_DIR/bin:$PATH"
LD_LIBRARYN32_PATH="$GBSTEST_INSTALL_DIR/lib:$LD_LIBRARYN32_PATH"
LD_LIBRARY_PATH="$GBSTEST_INSTALL_DIR/lib:$LD_LIBRARY_PATH"
PKG_CONFIG_PATH="$INSTALLDIR/lib/pkgconfig"
export CC CXX CPPFLAGS CFLAGS CXXFLAGS LDFLAGS PATH LD_LIBRARYN32_PATH LD_LIBRARY_PATH PKG_CONFIG_PATH GBSTEST_INSTALL_DIR
