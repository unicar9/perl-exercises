# (11) (OPTIONAL) Write a program that does the same calculations as (6), but prints the names and percentage in numerical order. You may have to do some research to solve this problem.

#!/usr/bin/perl -w

use strict;

open( INFILE, "india_captains.txt");

my %wins;
while ( my $current_line = <INFILE>) {
  chomp($current_line);
  my @data_fields = split ",",$current_line;
  my @game_data = @data_fields[1,2,3];
  my $total_games = eval join '+', @game_data;
  my $percentage = ($game_data[1]/$total_games)*100;
  %wins = ( %wins, $data_fields[0], $percentage );
}

foreach my $captain (sort { $wins{$a} <=> $wins{$b}} keys %wins) {
  printf("%-30s%5.2f\n", $captain,$wins{$captain});
}

