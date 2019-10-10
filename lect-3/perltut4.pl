# (4) Write a program that prints the names of the captains in alphabetical order. Hint: You will need to store the names of the captains in an array. When the array has all the names, you will need to sort it.

#!/usr/bin/perl -w

use strict;

open(FILE, "./india_captains.txt") or die "$!";

my $index = 0;
my @captains;

while (my $current_line = <FILE>) {
  chomp($current_line);
  my @data_fields = split ",", $current_line;
  $captains[$index++] = $data_fields[0];
}

my @sorted_captains = sort(@captains);

for ($index = 0; $index < scalar(@captains); $index++) {
  print $sorted_captains[$index]."\n";
}