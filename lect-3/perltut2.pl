# (2) Make a copy of your working answer from (1). Write a program that extracts the names of the captains from the file and puts them in an array. The program should then print the number of elements in the array and the index number of the last element in the array.


#!/usr/bin/perl -w

use strict;

open (FILE, "india_captains.txt") or die "$!";

my $index = 0;
my @captains;

while (my $current_line = <FILE>) {
  chomp($current_line);
  my @data_fields = split ",", $current_line;
  @captains[$index++] = $data_fields[0];
}

my $array_size = @captains;
print "Array Size = $array_size\n";
print "Index of last element = $#captains\n";