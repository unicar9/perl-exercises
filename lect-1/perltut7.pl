# (7) Write a perl program that takes arguments from the command line. The program should print the number of arguments, the index of each argument and the value of each argument.

#!/usr/bin/perl -w
use strict;
my $last = $#ARGV;
my $size = $last + 1;

print "Number of arguments is $size\n"; 

for (my $i=0; $i <= $last; $i++) {
  print "index = $i Argument = $ARGV[$i]\n"; 
}
