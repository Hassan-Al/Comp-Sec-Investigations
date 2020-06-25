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