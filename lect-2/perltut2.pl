# (2) Make a copy of your program. Modify the code so that the program will accept multiword family names such as Van Nguyen, De Groot, De La Montrose etc.

# https://perldoc.perl.org/perlretut.html


#!/usr/bin/perl -w
use strict;

my $given_name;
my $family_name;

my $valid = 0;

while (!$valid) {
  print "Enter your given name:"; 
  $given_name = <STDIN>;
  chomp($given_name);
  if ( $given_name =~ /\b[A-Z][a-z]+\b/g ) {
    $valid = 1;
  } else {
    print "The given name enered must begin with a capital first letter and be at least two characters in length.\n";
  }
}

$valid = 0;

while (!$valid) {
  print "Enter your family name:"; 
  $family_name = <STDIN>;
  chomp($family_name);
  if ( $family_name =~ /\b[A-Z][a-z]+\b/g ) {
    $valid = 1;
  } else {
    print "The family name enered must begin with a capital first letter and be at least two characters in length.\n";
  }
}

print "Thank you, $given_name $family_name.\n"
