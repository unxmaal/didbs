#
CC=$DIDBS_CC
CPPFLAGS="-I. -I$INSTALLDIR/include"
CFLAGS="$DIDBS_ARCH_CFLAGS $DIDBS_O3_NOIPA_CFLAGS $DIDBS_NOWARN_CFLAGS"
LDFLAGS="$DIDBS_ARCH_LDFLAGS $DIDBS_NOIPA_LDFLAGS $DIDBS_NOWARN_LDFLAGS -L$INSTALLDIR/lib"

CXXFLAGS="$CFLAGS"

LD_LIBRARYN32_PATH="$INSTALLDIR/lib"
PKG_CONFIG_PATH="$INSTALLDIR/lib/pkgconfig"

SHELL="$INSTALLDIR/bin/bash"
CONFIG_SHELL="$INSTALLDIR/bin/bash"
SHELL_PATH="$INSTALLDIR/bin/bash"

PERL="$INSTALLDIR/bin/perl"
PERL_PATH="$INSTALLDIR/bin/perl"
TCLTK_PATH="$INSTALLDIR/bin/wish"

export CC CPPFLAGS CFLAGS CXXFLAGS LDFLAGS LD_LIBRARYN32_PATH PKG_CONFIG_PATH SHELL CONFIG_SHELL SHELL_PATH PERL PERL_PATH TCLTK_PATH
