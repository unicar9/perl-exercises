# (6) Write a perl program that will accept strings of the form <pattern>XY<pattern> where pattern contains 1 or more characters. So the strings abcdXYabcd, 1XY1 and XYXYXY will be accepted but XYXY and XY will not.

#!/usr/bin/perl -w

use strict;

my $string;
my $valid = 0;

while (!$valid) {
  print "Enter a string of the form <pattern>XY<pattern>: ";
  $string = <STDIN>;
  chomp($string);
  if ($string =~ /^(.+)XY\1$/) {
    $valid = 1;
  }
}