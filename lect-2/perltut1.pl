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