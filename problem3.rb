# Problem 3
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

# Second iteration: [Ian Grabill](https://github.com/igrabes) talked me through the concept of pitting a range against the 'number given' to find factors; I used the same logic from the first iteration. This way I won't run into the problem of infinite loop because of the set-range.

# The method 'factor' takes two arguments: num = the number given (600851475143); limit = the upper limit for th range
def factor(num, limit)
  (1..limit).map do |l|
    num / l
    yield l if num / l * l == num
  end
end

factorArray = []
factor(600851475143, 1000000) { |f| factorArray << f }

p factorArray # => [1, 71, 839, 1471, 6857, 59569, 104441, 486847]
p factorArray.last # => 486847

until factorArray.inject(:*) == 600851475143
  factorArray.slice!(-1)
  puts factorArray.last
end

answer = factorArray.last
puts "Largest prime factor for 600851475143 is #{answer}" # => Largest prime factor is 6857

# First iteration:
# Here I tried to map out all the factors into an array; this method works for smaller numbers, but not with 600851475143 because it blew out my computer's memory. This is because there is no upper limit, and computer goes into infinite loop
#
# def factor(num)
#   (2..num).map { |n| yield n if num/n * n == num }
# end

# factorsArray = []
# factor(600851475143) { |f| factorsArray << f }.compact!.uniq!
# p factorsArray.length

# def prime(xnums)
#   xnums.inject { |result, element|
#     if result.gcd(element) == 1
#       result
#     end
#   }
# end

# primeFactors = []
# prime(factorsArray) { |f| primeFactors << f }

# p primeFactors.inspect
#
# oddArray = factorsArray.map { |n| n if n ==2 || n.odd? }
# p oddArray.compact!.inspect

