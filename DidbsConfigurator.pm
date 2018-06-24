package DidbsConfigurator;

use DidbsUtils;

sub new
{
    my $self = bless {}, shift;
    my $scriptLocation = shift;
    my $packageDefsDir = shift;
    my $packageId = shift;
    my $packageDir = shift;
    my $buildDir = shift;
    my $installDir = shift;
    my $pathToStage0Root = shift;
    my $didbsPackage = shift;
    my $didbsExtractor = shift;
    my $didbsPatcher = shift;

    $self->{scriptLocation} = $scriptLocation;
    $self->{packageDefsDir} = $packageDefsDir;
    $self->{packageId} = $packageId;
    $self->{packageDir} = $packageDir;
    $self->{buildDir} = $buildDir;
    $self->{installDir} = $installDir;
    $self->{pathToStage0Root} = $pathToStage0Root;
    $self->{didbsPackage} = $didbsPackage;
    $self->{didbsExtractor} = $didbsExtractor;
    $self->{didbsPatcher} = $didbsPatcher;

    return $self;
}

sub configureit
{
    my $self = shift;
    my $packageId = $self->{packageId};
    print "Configuring $packageId\n";

    my $builddir = "$self->{buildDir}/$packageId/$self->{didbsPackage}->{packageDir}";
    print "Would configure in $builddir\n";
    my $installdir = $self->{installDir};
    my $extraargs;
    print "Checking if $packageId begins with stage1.\n";
    if( begins_with($packageId,"stage1") )
    {
	$extraargs=$self->{pathToStage0Root};
    }
    else
    {
	$extraargs="";
    }

    my $configureRecipe = "$self->{packageDefsDir}/$packageId/$self->{didbsPackage}->{configureRecipe}";
    my $cmd = "$configureRecipe $builddir $installdir $extraargs";
    print "About to execute $cmd\n";
    system($cmd) == 0 || die $!;

    return 1;
}

sub debug
{
    my $self = shift;
    print "DidbsConfigurator constructed for $self->{packageId}\n";
}

1;