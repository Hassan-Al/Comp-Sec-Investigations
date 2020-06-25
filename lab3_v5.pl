use warnings;
use strict;
open (my $file, 'sample.log') or die $!;
my $lineno = 0;
while (my $line = <$file>)	
{
	if ($line =~ /$ARGV[0]/)
	{	
		$lineno ++;
		if ($ARGV[1])
		{
			print substr($line, 0, $ARGV[1]),"\n";
		}
	}
} 
print "This file contains $lineno records";
close $file;