# Problem 10:
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

# Used mathn Prime to generate a list of prime numbers up til 2E6

require 'mathn'

b = []
Prime.each { |x|
  b << x
  break if x > 2E6
}

b.pop
puts b.reduce(:+)

