# (8) Copy your working program from (7). Modify it so that the number of wins is the key. The program should then print out just the values stored in the hash using the values function.

#!/usr/bin/perl -w

use strict;

open( INFILE, "india_captains.txt");

my %wins;
while ( my $current_line = <INFILE>) {
    chomp($current_line);
    my @data_fields = split ",",$current_line;
    %wins = ( %wins, $data_fields[0], $data_fields[1] );
}

foreach my $value (values %wins) {
    print "$value\n";
}