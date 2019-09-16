# (1) Write a perl program that prompts the user to enter their weight in kilograms and their height in centimeters. The program should then print the user’s Body Mass Index (BMI). Body Mass Index is the their weight in kilograms divided by the square of their height in meters. To convert centimeters to meters divide by 100.

#!/usr/bin/perl -w

print "Please enter your weight in kilograms: ";
my $weight = <STDIN>;
chomp $weight;

print "Please enter your height in centimeters: ";
my $height = <STDIN>;
chomp $height;

my $bmi = $weight / ($height / 100) ** 2;
print "Your Body Mass Index (BMI) is $bmi\n";

