# Problem 4:
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

# The idea here (thanks to Aidan Feldman!) is to use ranges to find all
# the products of a pair of 3-digit numbers. Aidan suggested using a
# nested loop.
#
# To visualize, for every x from 100..999, multiplies by y of 100..999.
# This means 100 * 100, 100 * 101, 100 * 102 ... and so forth
#
def multiply
  (100..999).each do |x|
    (x..999).each do |y|
      z = x * y
      yield z
    end
  end
end

product = []
multiply { |f| product << f }

product.compact!
product.uniq!
p product.size # => this shows that there are 227521 combinations

to_strings = product.map { |x| x.to_s } # convert each element within the array to strings to take advantage of the 'reverse' string method

# Essentially palindromic means you can read the word/number/anything
# forwards and backwards; ie "pop", 101, etc.
#
palindrome = []
to_strings.map { |c| palindrome << c if c == c.reverse }

p palindrome.size # => 665 numbers

# The palindrome array has 665 elements, but they are out of order:
#
answer = palindrome.map { |p| p.to_i }.sort!
p "The largest palindrome made from the product of 3-digit number pairs is #{answer.last}" # => 906609

##################################
#
#Iteration 2
#
# This assumes the highest product of two 3-digits numbers is
# six-digits; wrong assumption because palindromic numbers can be
# odd-digit numbers.

# This nested array is incorrect: it doesn't cover square of the x
# def produce
#   (100..999).each do |x|
#     (x+1..999).each do |y|
#       z = x * y #if (x * y).to_s =~ /\d{6}/
#       yield z
#     end
#   end
# end

# product = []
# produce { |f| product << f }

# product.compact!
# product.uniq!
# p product.size # => this shows that there are 194251 unique 6-digits numbers

# pairs = product.map { |c| c.to_s.scan(/(...)/).flatten! } # this breaks down each 6-digits number into two 3-digits pairs in an nested array

# palindrome = []
# pairs.map { |x| palindrome << x if x[0] == x[-1].reverse }

# p palindrome.size # => this shows that there are 279 numbers
# p palindrome.inspect # => the highest number is 888888



##################################
#
# Iteration 1

# This breaks down the palindromic two digit number and add the sum of the first two
# digits and the latter two digits
# a = "9009"

# b = a.scan(/(..)/).flatten.map { |x| x.to_i }

# c = b.map { |z|  # => this adds the two digits together
#             x = z/10
#             y = z - (x * 10)
#             x + y
#            }

# puts c[0] == c[1] # => true if it is palindromic 2-digit

# Need to figure out if a number is a product of a two 3 digits numbers

# nnn = []
# z.to_s.each_char { |c| nnn << c ; nnn[0] == nnn[-1] && nnn[1] == nnn[-2] && nnn[2] == nnn[-3] }

# (100..999).each { |x|
#   x * x.succ if x * x.succ == z.to_i
#   puts z
# }


