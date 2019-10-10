# (7) Write a program that stores the names in a hash with the captain’s name as the key and the total wins as the value. Print the keys and values in the hash. Use the same printf function as you did in q5. When you have the program working does it print the keys and values in the same order as q5?
# Hints: A hash such as %hash can be populated by putting the hash name and individual keys ($key), and values ($value) in an assignment like this:
# $hash{$key} = $value;
# another way is to use a list like this:
# %hash = (%hash, $key, $value);
# (Be careful with the %,$,(,),{ and } symbols)
# One way a hash can be iterated through and printed out is :
# foreach my $key (keys %hash) {
# print “$key $hash{$key}”; }
# Note that the keys function extracts the keys from the hash %hash. Again, be very careful with the %,$,(,),{ and } symbols).
# Note that two hashes produced using the two different methods with identical input data will probably not list the hashes in the same order.
