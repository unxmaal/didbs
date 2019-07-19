#GBS8_1_INSTALL_DIR="$INSTALLDIR/gbs8_1"
#
#CC=gcc
#CPPFLAGS="$DIDBS_CPPFLAGS"
#CFLAGS="-O2 -I$INSTALLDIR/include"
#LDFLAGS="-L$INSTALLDIR/lib"

CC=$DIDBS_CC
CPPFLAGS="-I$INSTALLDIR/include"

#CFLAGS="$DIDBS_ARCH_CFLAGS $DIDBS_O1_CFLAGS $DIDBS_NOWARN_CFLAGS -I$INSTALLDIR/include"
#LDFLAGS="$DIDBS_ARCH_LDFLAGS $DIDBS_NOWARN_LDFLAGS -L$INSTALLDIR/lib"

#CFLAGS="$DIDBS_ARCH_CFLAGS $DIDBS_O2_NOIPA_CFLAGS $DIDBS_NOWARN_CFLAGS -I$INSTALLDIR/include"
#LDFLAGS="$DIDBS_ARCH_LDFLAGS $DIDBS_NOIPA_LDFLAGS $DIDBS_NOWARN_LDFLAGS -L$INSTALLDIR/lib"

CFLAGS="$DIDBS_ARCH_CFLAGS $DIDBS_O3_NOIPA_CFLAGS $DIDBS_NOWARN_CFLAGS -I$INSTALLDIR/include"
LDFLAGS="$DIDBS_ARCH_LDFLAGS $DIDBS_NOIPA_LDFLAGS $DIDBS_NOWARN_LDFLAGS -L$INSTALLDIR/lib"

CXXFLAGS="$CFLAGS"
PERL="$INSTALLDIR/bin/perl"
TEST_SHELL="$INSTALLDIR/bin/bash"
SHELL="$INSTALLDIR/bin/bash"
CONFIG_SHELL="$INSTALLDIR/bin/bash"

#PATH="$GBS8_1_INSTALL_DIR/bin:$PATH"
#LD_LIBRARYN32_PATH="$GBS8_1_INSTALL_DIR/lib:$LD_LIBRARYN32_PATH"

export CC CFLAGS CXXFLAGS LDFLAGS PERL TEST_SHELL SHELL CONFIG_SHELL PATH LD_LIBRARYN32_PATH
