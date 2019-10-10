# (9) Write a program that prompts the user to enter a key and a value and then puts these values in a hash. Once the hash has 4 elements it should print out the keys and values in the hash.

#!/usr/bin/perl -w

use strict;

my $i = 1;
my ($key,$value,%hash);

while ( $i <= 4) {
  print "Enter key $i :";
  $key = <STDIN>;

  print "Enter value $i :";
  $value = <STDIN>;

  %hash = ( %hash, $key, $value );
  $i++;
}

foreach $key (keys %hash) {
  print "$key $hash{$key}\n";
}
