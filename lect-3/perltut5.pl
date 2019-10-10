# (5) Write a program that prints the names of the captains in the order that they are in the file and the total number of games they played as captain. This will be the total of fields 1,2 and 3. (Field 0 is the Captain’s name). The Captain’s name should be printed left justified using printf in width 30 characters wide.


#!/usr/bin/perl -w

use strict;

open( INFILE, "india_captains.txt");

while ( my $current_line = <INFILE>) {
    chomp($current_line);
    my @data_fields = split ",", $current_line;
    my @game_data = @data_fields[1,2,3];
    my $total_games = eval join '+', @game_data;
    printf("%-30s",$data_fields[0]);
    print $total_games."\n";
}