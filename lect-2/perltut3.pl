# (3) Write a program that will be part of an online search for a book. You are asked the maximum price you will accept. Valid maximum prices can optionally begin with a plus sign, must have a decimal point and must have exactly two digits after the decimal point. They must have at least one number (which can be a zero) before the decimal point. Your program will accept the value 0.00. The maximum value it can accept is 9999.99.

#!/usr/bin/perl -w

use strict;

my $amount;
my $valid = 0;

while (!$valid) {
  print "Enter an amount between 0 and 9999.99: ";
  $amount = <STDIN>;
  chomp($amount);
  if ($amount =~ /^[+][][]\.[0-9][0-9]*/)
}