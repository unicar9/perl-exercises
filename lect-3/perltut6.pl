# (6) Write a program that prints the name of each captain (left justified in a 30 character width) and the percentage of total games played that they won as captain. i.e. field 1/sum of fields (1,2,3) expressed as a percentage to two decimal places. Hint: You will have to use printf for the captain’s name and the percentage.

#!/usr/bin/perl -w

use strict;

open( INFILE, "india_captains.txt");

while ( my $current_line = <INFILE>) {
  chomp($current_line);
  my @data_fields = split ",",$current_line;
  my @game_data = @data_fields[1,2,3];
  my $total_games = eval join '+', @game_data;
  my $percentage = ($game_data[1]/$total_games)*100;
  printf("%-30s%5.2f\n",$data_fields[0], =$percentage);
}
