# (4) Write a perl program that prompts the user for a temperature in Celsius and prints its value in Fahrenheit. The conversion formula is

# Fahrenheit = ( 9*Celsius/5 ) + 32

#!/usr/bin/perl -w

print "Please enter a temperature in Celsius: ";
$celsius = <STDIN>;
chomp $celsius;

$fahrenheit = (9 * $celsius / 5) + 32;

print "The temperature in Fahrenheit is $fahrenheit degree.\n";