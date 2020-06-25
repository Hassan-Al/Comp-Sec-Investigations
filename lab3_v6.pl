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
			$line =~ /(SRC=[0-9\.]* ).*(SPT=[0-9\.]* )/;
			my $src_ip = $1;
			my $src_port = $2;
			print $src_ip, $src_port, substr($line, 0, $ARGV[1]), "\n";
		}
	}
} 
print "This file contains $lineno records";
close $file;