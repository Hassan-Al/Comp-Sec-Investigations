use warnings;
use strict;
open (my $file, 'TestFile.txt') or die $!;
my @line = <$file>;
print @line;
close $file;