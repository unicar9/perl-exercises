# (4) Modify your answer from (3) so that the maximum amount that can be entered is 5999.99. That is, the program accepts any number between 5999.99 and .00. Note that there must always be a decimal point and there must always be two numbers in the range 00 to 99 after the decimal point

#!/usr/bin/perl -w

use strict;

my $amount;
my $valid = 0;

while (!$valid) {
  print "Enter an amount between 0 and 5999.99: ";
  $amount = <STDIN>;
  chomp($amount);
  if ($amount =~ /^[+]?[0-5]?[0-9]{1,3}\.[0-9][0-9]$/) {
    $valid = 1; 
  }
}

print "$amount is valid\n";