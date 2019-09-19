# (9) Modify the program from (2) so that if the BMI calculated is less than 18.5, as well as printing the BMI, the program prints “Your BMI is a little low”. If it is greater than 24.9, the program should print “Your BMI is a little high”. Otherwise it should print “Your BMI is in an acceptable range”.

#!/usr/bin/perl -w

print "Please enter your weight in kilograms: ";
my $weight = <STDIN>;
chomp $weight;

print "Please enter your height in centimeters: ";
my $height = <STDIN>;
chomp $height;

my $bmi = $weight / ($height / 100) ** 2;
my $result = sprintf("%.3f", $bmi);

if ($result < 18.5) {
  print "Your Body Mass Index (BMI) is $result. Your BMI is a little low.\n";
} elsif ($result > 24.9) {
  print "Your Body Mass Index (BMI) is $result. Your BMI is a little high.\n";
} else {
  print "Your Body Mass Index (BMI) is $result. Your BMI is in an acceptable range.\n";
}

