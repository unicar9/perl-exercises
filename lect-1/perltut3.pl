# (3) Once you have finished the program in (2) and have it running make a copy. Modify the copy so that it prompts the user to repeat the data entry. Any value entered other than “Y” or “y” should exit the program.


#!/usr/bin/perl -w

my $choice = "Y";

do {
  print "Please enter your weight in kilograms: ";
  my $weight = <STDIN>;
  chomp $weight;

  print "Please enter your height in centimeters: ";
  my $height = <STDIN>;
  chomp $height;

  my $bmi = $weight / ($height / 100) ** 2;
  my $result = sprintf("%.3f", $bmi);
  print "Your Body Mass Index (BMI) is $result\n";

  print "Calculate BMI again? (Y/N)";
  my $answer = <STDIN>;
  # uc = upper case
  # substr get the substring of $answer at location 0 for 1 length
  $choice = uc(substr($answer,0,1));

} while ($choice eq "Y")


