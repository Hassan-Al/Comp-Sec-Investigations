use warnings;
use strict;
open (my $file, 'sample.log') or die $!;
my $lineno = 0;
while (my $line = <$file>)	
{
	$lineno ++;
	print "Record ";
	print $lineno;
	print ": $line";
} 
print "This file contains $lineno records";
close $file;