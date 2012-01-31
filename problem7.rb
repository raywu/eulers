# Problem 7:
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

# This is the easy way with 'mathn' module

require 'mathn'

b = []
Prime.each_with_index { |x, i| break if i == 10001; b << x } # Note the 'break if' has to be in the block before the block inserts x element in to 'b' array
p b.last # => 104743
