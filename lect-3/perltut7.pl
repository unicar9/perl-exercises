# (7) Write a program that stores the names in a hash with the captain’s name as the key and the total wins as the value. Print the keys and values in the hash. Use the same printf function as you did in q5. When you have the program working does it print the keys and values in the same order as q5?
# Hints: A hash such as %hash can be populated by putting the hash name and individual keys ($key), and values ($value) in an assignment like this:
# $hash{$key} = $value;
# another way is to use a list like this:
# %hash = (%hash, $key, $value);
# (Be careful with the %,$,(,),{ and } symbols)
# One way a hash can be iterated through and printed out is :
# foreach my $key (keys %hash) {
# print “$key $hash{$key}”; }
# Note that the keys function extracts the keys from the hash %hash. Again, be very careful with the %,$,(,),{ and } symbols).
# Note that two hashes produced using the two different methods with identical input data will probably not list the hashes in the same order.

#!/usr/bin/perl -w

use strict;

open (INFILE, "india_captains.txt") or die "$!";

my %wins;

while (my $current_line = <INFILE>) {
  chomp($current_line);
  my @data_fields = split ",",$current_line;
  my @game_data = @data_fields[1,2,3];
  my $total_games = eval join '+', @game_data;
  my $percentage = ($game_data[1]/$total_games)*100;
  $wins{$data_fields[0]} = $percentage;
}

foreach my $key (keys %wins) {
  printf("%-30s%5.2f\n", $key, $wins{$key});
}