# (6) Make a copy of your program from (4). Change it so that it prints out the Celsius temperatures from 0 to 100 degrees Celsius in increments of 1 degree and the corresponding Fahrenheit temperature in a table. Use the perl printf statement and the appropriate format string to print to two decimal places. Note you can pipe your program through the unix less utility to see the output.

#!/usr/bin/perl -w
use strict;


my $celsius = 0;
while ( $celsius <= 100 ) {
  my $fahrenheit = 9*$celsius/5 + 32; 
  printf("%6.2f %6.2f\n",$celsius,$fahrenheit); 
  $celsius++;
}