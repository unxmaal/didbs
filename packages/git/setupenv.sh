#
CC=$DIDBS_CC
CPPFLAGS="-I. -I$INSTALLDIR/include"
if [ "ne$DIDBS_CC" == "negcc" ]; then
    CFLAGS="$DIDBS_ARCH_CFLAGS $DIDBS_GCC_OPT_SWITCH"
    LDFLAGS="$DIDBS_ARCH_LDFLAGS -L$INSTALLDIR/$DIDBS_LIBDIR"
else
    CFLAGS="$DIDBS_ARCH_CFLAGS $DIDBS_O3_NOIPA_CFLAGS $DIDBS_NOWARN_CFLAGS"
    LDFLAGS="$DIDBS_ARCH_LDFLAGS $DIDBS_NOIPA_LDFLAGS $DIDBS_NOWARN_LDFLAGS -L$INSTALLDIR/$DIDBS_LIBDIR"
fi
CXXFLAGS="$CFLAGS"
SHELL="$INSTALLDIR/bin/bash"
CONFIG_SHELL="$INSTALLDIR/bin/bash"
SHELL_PATH="$INSTALLDIR/bin/bash"
PERL="$INSTALLDIR/bin/perl"
PERL_PATH="$INSTALLDIR/bin/perl"
TCLTK_PATH="$INSTALLDIR/bin/wish"
export CC CPPFLAGS CFLAGS CXXFLAGS LDFLAGS SHELL CONFIG_SHELL SHELL_PATH PERL PERL_PATH TCLTK_PATH
if [ "ne$DIDBS_LIBDIR" == "nelib32" ]; then
    LD_LIBRARYN32_PATH="$INSTALLDIR/lib32:$LD_LIBRARYN32_PATH"
    PKG_CONFIG_PATH="$INSTALLDIR/lib32/pkgconfig:$PKG_CONFIG_PATH"
    export LD_LIBRARYN32_PATH PKG_CONFIG_PATH
else
    LD_LIBRARYN64_PATH="$INSTALLDIR/lib64:$LD_LIBRARYN64_PATH"
    PKG_CONFIG_PATH="$INSTALLDIR/lib64/pkgconfig:$PKG_CONFIG_PATH"
    export LD_LIBRARYN64_PATH PKG_CONFIG_PATH
fi
