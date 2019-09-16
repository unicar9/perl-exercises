# (2) Make a copy of the working program from (1). Modify it so that it uses the perl printf statement to print the BMI to 3 decimal places.

#!/usr/bin/perl -w

print "Please enter your weight in kilograms: ";
my $weight = <STDIN>;
chomp $weight;

print "Please enter your height in centimeters: ";
my $height = <STDIN>;
chomp $height;

my $bmi = $weight / ($height / 100) ** 2;
my $result = sprintf("%.3f", $bmi);

print "Your Body Mass Index (BMI) is $result\n";