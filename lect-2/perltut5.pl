# (5) Modify your answer from 4 so that it now accepts all numbers between 5999.99 and 0. The program should also accept integers between 5999 and 0 and floating point numbers between 5999.99 and .00 If the user enters a decimal point, it must have at least one and a maximum of two digits after the decimal point. i.e. numbers like 123.1, 123.11, and 123.01 are all acceptable but 123. Is not acceptable. Also a bare 0 is acceptable.

#!/usr/bin/perl -w

use strict;

my $amount;
my $valid = 0;
while (!$valid) {
  print "Enter an amount between 0 and 5999.99: ";
  $amount = <STDIN>;
  chomp($amount);
  if ($amount =~ /^\+?[0-5]?\d{1,3}(\.\d{1,2})?$/ ) {
    $valid = 1; 
  }
}

print "$amount is valid\n";