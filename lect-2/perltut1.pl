# Here is a simple model program that you can use as the basis for these questions.
# #!/usr/bin/perl -w
# use strict;
# my $valid = 0;
# my $number;
# while ( !$valid )
# {
  # print "Enter a 2 digit integer between 00 and 99:"; $number = <STDIN>;
  # chomp($number);
  # if ($number =~ /^[[0-9][0-9]$/)
# # Note an alternative regular expression # to match a two digit number is \d\d
# {
# $valid = 1;
# } }
# print "$number matches\n";

#  (1) Write a simple program that asks the user for their given name and their family name. The names entered must begin with a capital letter and be at least two characters in length. Use a regular expression to validate the data. This version of the program will not be able to handle multiword family names like “Van Rossum” or “De Burgh”.

#!/usr/bin/perl -w
use strict;

my $given_name;
my $family_name;

# my $regex = /^[A-Z][a-z]{1,}$/;

my $valid = 0;

while (!$valid) {
  print "Enter your given name:"; 
  $given_name = <STDIN>;
  chomp($given_name);
  if ( $given_name =~ /^[A-Z][a-z]{1,}$/ ) {
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
  if ( $family_name =~ /^[A-Z][a-z]{1,}$/ ) {
    $valid = 1;
  } else {
    print "The family name enered must begin with a capital first letter and be at least two characters in length.\n";
  }
}

print "Thank you, $given_name $family_name.\n"