# Problem 5:
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

answer = (2..20).inject { |result, element| result.lcm element }
puts "The smallest evenly divsible number from 1 to 20 is #{answer}"

# Iteration 2
# This took forever
# def number(n, limit)
#   a = (2..n).inject { |result, element| result * element }
#   b = []
#   (2..limit).each { |x|
#     b << x if x % 2 == 0  && x % 3 == 0 && x % 4 == 0 && x % 5 == 0 && x % 6 == 0 && x % 7 == 0 && x % 8 == 0 && x % 9 == 0 && x % 10 == 0 #&& x % 11 == 0 && x % 12 == 0 && x % 13 == 0 && x % 14 == 0 && x % 15 == 0 && x % 16 == 0 && x % 17 == 0 && x % 18 == 0 && x % 19 == 0 && x % 20 == 0
#   }
#   b.flatten!
#   b.uniq!
#   b.min
# end
#
# p number(20, 1E10)


# Iteration 1
# a = (2..10).inject { |result, element| result * element }
# b = []
# c = (2..a).each { |x|
#   (2..10).each { |y|
#     b << x if x % y == 0
#   }
# }

# p b.uniq.size
# p b.uniq
