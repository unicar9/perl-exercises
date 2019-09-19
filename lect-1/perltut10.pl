# (10) Write a perl program that takes a text file name as an argument on the command line. The program should open the file and write its contents to the screen. If the file does not exist the program should print “File not found” and exit.

#!/usr/bin/perl -w

open (FILE, $ARGV[0]) or die "File not found";

while (my $line = <FILE>) {
  print $line;
}
