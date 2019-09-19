# (11) Create a file “characters.txt” with the following contents:
# Hermione Ron
# Hagrid Snape
# Harry
# Draco
# Ginny Dumbledore
# Write a program that prompts the user for a name. The program should read in the name, then open the characters.txt file, read it and report back to the user if the name was found.

#!/usr/bin/perl -w

print "Please enter a name: ";
my $name = <STDIN>;
chomp $name;

open (FILE, "./characters.txt") or die "$!";

my $nameFound = 0;

while (my $line = <FILE>) {
  chomp $line;
  if ($name eq $line) {
    $nameFound = 1;
    print "The name $name was found in the file.\n";
  }
}

$nameFound or print "$name was NOT found in the file.\n";

