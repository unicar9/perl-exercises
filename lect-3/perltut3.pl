# (3) Make a copy of your working answer from (1). Modify the file so the names of the captains are printed right justified in a space 30 characters wide. Hint: look at the perl printf command.

#!/usr/bin/perl -w

use strict;

open (FILE, "./india_captains.txt") or die "$!";

while (my $current_line = <FILE>) {
  chomp($current_line);
  my @data_fields = split ",", $current_line;
  printf("%30s\n", $data_fields[0]);
}