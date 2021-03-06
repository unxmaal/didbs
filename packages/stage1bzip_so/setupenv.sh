#
CC=$DIDBS_CC
BIGFILES="-D_FILE_OFFSET_BITS=64"
if [ "ne$CC" == "negcc" ]; then
    CFLAGS="$DIDBS_ARCH_CFLAGS $DIDBS_GCC_OPT_SWITCH -fPIC -DPIC $BIGFILES"
else
    CFLAGS="$DIDBS_ARCH_CFLAGS -O1 -Wall -fPIC -DPIC $BIGFILES"
fi
LDFLAGS="$DIDBS_ARCH_LDFLAGS"
PATH=$INSTALLDIR/bin:$EXTRAARGS/bin:$PATH
export CC CFLAGS LDFLAGS BIGFILES PATH
if [ "ne$DIDBS_LIBDIR" == "nelib32" ]; then
    LD_LIBRARYN32_PATH="$INSTALLDIR/lib32:$LD_LIBRARYN32_PATH"
    PKG_CONFIG_PATH="$INSTALLDIR/lib32/pkgconfig:$PKG_CONFIG_PATH"
    export LD_LIBRARYN32_PATH PKG_CONFIG_PATH
else
    LD_LIBRARYN64_PATH="$INSTALLDIR/lib64:$LD_LIBRARYN64_PATH"
    PKG_CONFIG_PATH="$INSTALLDIR/lib64/pkgconfig:$PKG_CONFIG_PATH"
    export LD_LIBRARYN64_PATH PKG_CONFIG_PATH
fi
