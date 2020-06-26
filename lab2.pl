# Lab2_v1.pl
#
#
use warnings;
use strict;
open (my $file, 'TestFile.txt') or die $!;
my $line = <$file>;
print $line;
close $file;
#
#
# Lab2_v2.pl
#
#
use warnings;
use strict;
open (my $file, 'TestFile.txt') or die $!;
my @line = <$file>;
print @line;
close $file;
#
#
# Lab2_v3.pl
#
#
use warnings;
use strict;
open (my $file, 'TestFile.txt') or die $!;
my $line = <$file>;
#print $line;
print <$file>;
close $file;
#
#
# Lab2_v4.pl
#
#
use warnings;
use strict;
open (my $file, 'TestFile.txt') or die $!;
while (<$file>)	{
	print "$_";
}
close $file;
#
#
# Lab2_v5.pl
#
#
use warnings;
use strict;
open (my $file, 'TestFile.txt') or die $!;
my $lineno = 0;
while (my $line = <$file>)	{
	$lineno ++;
	print "This is record ";
	print $lineno;
	print ": $line";
} 
print "
The file containted $lineno records";
close $file;
#
#
# Lab2_v6.pl
#
#
use warnings;
use strict;
open (my $file, 'TestFile.txt') or die $!;
my $lineno = 0;
while (my $line = <$file>)	
{
	if($line eq "line two\n"){next};
	$lineno ++;
	print "This is record ";
	print $lineno;
	print ": $line";
	if($line eq "line four\n"){last};
}
print "The file containted $lineno records";
close $file;
