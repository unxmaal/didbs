#
CC=$DIDBS_CC
CPPFLAGS=""
CFLAGS="$DIDBS_ARCH_CFLAGS $DIDBS_O3_NOIPA_CFLAGS $DIDBS_NOWARN_CFLAGS"
#CFLAGS="$DIDBS_ARCH_CFLAGS $DIDBS_O1_CFLAGS $DIDBS_NOWARN_CFLAGS"
#CXXFLAGS="$CFLAGS"
LDFLAGS="$DIDBS_ARCH_LDFLAGS $DIDBS_NOIPA_LDFLAGS $DIDBS_NOWARN_LDFLAGS -lgen"
#LDFLAGS="$DIDBS_ARCH_LDFLAGS $DIDBS_NOWARN_LDFLAGS -lgen"
PERL="$INSTALLDIR/bin/perl"
TEST_SHELL="$INSTALLDIR/bin/bash"
SHELL="$INSTALLDIR/bin/bash"
CONFIG_SHELL="$INSTALLDIR/bin/bash"
export CC CPPFLAGS CFLAGS CXXFLAGS LDFLAGS PERL TEST_SHELL SHELL CONFIG_SHELL
