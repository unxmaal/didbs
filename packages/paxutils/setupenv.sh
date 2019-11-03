#
CC="gcc"
CXX="g++"
CPPFLAGS="$DIDBS_CPPFLAGS"
CFLAGS="$DIDBS_ISA_SWITCH $DIDBS_GCC_OPT_SWITCH"
LDFLAGS="$DIDBS_ISA_SWITCH"
CXXFLAGS="$CFLAGS"
SHELL="$INSTALLDIR/bin/bash"
CONFIG_SHELL="$SHELL"
SHELL_PATH="$SHELL"
export CC CXX CPPFLAGS CFLAGS CXXFLAGS LDFLAGS SHELL CONFIG_SHELL SHELL_PATH PATH
if [ "ne$DIDBS_LIBDIR" == "nelib32" ]; then
    LD_LIBRARYN32_PATH="$INSTALLDIR/lib32"
    PKG_CONFIG_PATH="$INSTALLDIR/lib32/pkgconfig"
    export LD_LIBRARYN32_PATH PKG_CONFIG_PATH
else
    LD_LIBRARYN64_PATH="$INSTALLDIR/lib64"
    PKG_CONFIG_PATH="$INSTALLDIR/lib64/pkgconfig"
    export LD_LIBRARYN64_PATH PKG_CONFIG_PATH
fi