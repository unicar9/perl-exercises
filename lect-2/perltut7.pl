# (7) Modify the program from (6) so that the pattern can contain 0 or more characters. In this case as well as the examples from (6) the string XY will match.

#!/usr/bin/perl -w

use strict;

my $string;
my $valid = 0;

while (!$valid) {
  print "Enter a string of the form <pattern>XY<pattern>: ";
  $string = <STDIN>;
  chomp($string);
  if ($string =~ /^(.*)XY\1$/) {
    $valid = 1;
  }
}