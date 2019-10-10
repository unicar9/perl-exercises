# (1) Write a program that goes through the file india_captains.txt line by line and just prints the names of the captains. Hint: Start by putting the data from each line into an array using the perl split command.

#!/usr/bin/perl -w

use strict;

open (FILE, "india_captains.txt") or die "$!";

while (my $current_line = <FILE>) {
  chomp($current_line);
  my @data_fields = split ",", $current_line;
  print $data_fields[0]."\n"
}