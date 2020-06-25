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