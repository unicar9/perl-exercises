# (10) You are given a set of dates in a file. They need to be sorted. The dates are in the format DD- MM-YYYY. Write a program to populate an array from a file. The sorted dates need to be written back into a new file “sorted_dates.txt” in the format DD-MM-YYYY. How are you going to sort them? Hint: split and reverse are your friends.

#!/usr/bin/perl -w

use strict;

open(INFILE, "dates.txt") or die "$!";

my $current_line;
my $year_month_day;
my $day_month_year;
my @DMY;
my @YMD;
my @dates_reversed;
my @dates_sorted;
my $index=0;

while ($current_line = <INFILE>) {
  chomp($current_line);
  @YMD = reverse(split "-", $current_line);
  $year_month_day = "$YMD[0]-$YMD[1]-$YMD[2]";
  $dates_reversed[$index++] = $year_month_day;
}

@dates_sorted = sort @dates_reversed;
open(OUTFILE, ">dates_sorted.txt");
my $size = @dates_sorted;

for ($index = 0; $index < $size; $index++ ) {
  @DMY = reverse(split "-",$dates_sorted[$index]);
  $day_month_year = "$DMY[0]-$DMY[1]-$DMY[2]";
  print OUTFILE "$day_month_year\n";
}

close(OUTFILE);