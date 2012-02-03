# Problem 9
# A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,
# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

# Two loops. Thanks to Aidan Feldman's advise on doing algebraic substitution.
# 
 found = false

 (1..1E3).each { |x|
   (1..1E3).each { |y|
     puts "a = #{x}, b = #{y}, c = #{1000 - x - y}, product = #{x * y * (1000 - x - y)}"
     found = true if x ** 2 + y ** 2 == (1000 - x - y) ** 2
     break if found
   }
   break if found
 }

# Three loops, this takes forever
# found = false

# (1..1E3).each { |x|
#   (1..1E3).each { |y|
#     (1..1E3).each { |z|
#       puts "x = #{x}, y = #{y}, z = #{z}"
#       found = true if x + y + z == 1000 && x ** 2 + y ** 2 == z ** 2
#       break if found
#     }
#   break if found
#   }
#   break if found
# }


