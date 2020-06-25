use warnings;
use strict;
open (my $file, 'TestFile.txt') or die $!;
while (<$file>)	{
	print "$_";
}
close $file;