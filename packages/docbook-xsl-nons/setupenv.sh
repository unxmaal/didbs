CC=$DIDBS_CC
CPPFLAGS="-I$INSTALLDIR/include"
#CFLAGS="$DIDBS_ARCH_CFLAGS -O1"
#LDFLAGS="$DIDBS_ARCH_LDFLAGS -L$INSTALLDIR/lib -liconv"
CFLAGS="$DIDBS_ARCH_CFLAGS $DIDBS_O1_CFLAGS $DIDBS_NOWARN_CFLAGS"
LDFLAGS="$DIDBS_ARCH_LDFLAGS $DIDBS_NOWARN_LDFLAGS -L$INSTALLDIR/lib -liconv"

CXXFLAGS="$CFLAGS"
PERL="$INSTALLDIR/bin/perl"
TEST_SHELL="$INSTALLDIR/bin/bash"
SHELL="$INSTALLDIR/bin/bash"
CONFIG_SHELL="$INSTALLDIR/bin/bash"
export CC CFLAGS CXXFLAGS LDFLAGS PERL TEST_SHELL SHELL CONFIG_SHELL
