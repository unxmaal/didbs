#
CC=$DIDBS_CC
# For debugging
#CFLAGS="$DIDBS_ARCH_CFLAGS -g -O0 -DDEBUG=1"
#DEBUG=1
#export DEBUG
CFLAGS="$DIDBS_ARCH_CFLAGS -O1 $DIDBS_NOWARN_CFLAGS"
#CFLAGS="$DIDBS_ARCH_CFLAGS $DIDBS_O3_CFLAGS $DIDBS_NOWARN_CFLAGS"
LDFLAGS="$DIDBS_ARCH_LDFLAGS $DIDBS_NOWARN_LDFLAGS"
export CC CFLAGS LDFLAGS
if [ "ne$DIDBS_LIBDIR" == "nelib32" ]; then
    LD_LIBRARYN32_PATH="$INSTALLDIR/lib32"
    PKG_CONFIG_PATH="$INSTALLDIR/lib32/pkgconfig"
    export LD_LIBRARYN32_PATH PKG_CONFIG_PATH
else
    LD_LIBRARYN64_PATH="$INSTALLDIR/lib64"
    PKG_CONFIG_PATH="$INSTALLDIR/lib64/pkgconfig"
    export LD_LIBRARYN64_PATH PKG_CONFIG_PATH
fi
