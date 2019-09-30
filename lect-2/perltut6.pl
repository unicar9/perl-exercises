# (6) Write a perl program that will accept strings of the form <pattern>XY<pattern> where pattern contains 1 or more characters. So the strings abcdXYabcd, 1XY1 and XYXYXY will be accepted but XYXY and XY will not.

#!/usr/bin/perl -w

use strict;

my $istr = <STDIN>;

if ($istr =~ /^(abc)(.+)XY\2$/) {
  print $istr," is palindrome\n";
} else {
  print "haha you're stupid\n"
}

#  /^((\w)(?1)\g{-1}|\w?)$/