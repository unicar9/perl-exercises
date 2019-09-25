# (8) Modify your program from question 4 so that when the program runs, the user enters the Celsius temperature as an argument to the program. If there is no argument supplied the program should print a message “Please supply the Celsius temperature as an argument” and then exit. If the user runs the program with a non numeric argument the program should print “Please supply a numeric argument” and then exit.

#!/usr/bin/perl -w
use strict;

use Scalar::Util qw(looks_like_number);

if ( $#ARGV < 0 ) {
  print "Please supply the Fahrenheit temperature as an argument\n";
  exit; 
}
#lt: less than, gt: greater than
# if ( substr($ARGV[0],0,1) lt "0" || substr($ARGV[0],0,1) gt "9") {
#   print "Please supply a positive Celsius temperature numeric value as an argument\n";
#   exit; 
# }

unless ( looks_like_number($ARGV[0]) ) {
  print "Please supply a numeric value as an argument\n";
  exit; 
}

my $fahrenheit = 9*$ARGV[0]/5 + 32;
printf("The Fahrenheit temperature is %6.2f\n", $fahrenheit);