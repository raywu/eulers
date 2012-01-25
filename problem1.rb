#Problem 1
#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

#Use inject method on arrays

a = (0...1000).to_a #array of 0 to 999

#first, create an array of the satisfying elements
multiples = a.inject([]) { |result, element|
  result << element if element % 3 == 0 || element % 5 == 0
  result
}

p multiples.inspect

#add up the sum
answer = multiples.inject { |result, element| result + element } #inject takes a iterates over each element in the array through the block

puts "first iteration: #{answer}"


#Can anyone refactor the first iteration above and combine the two injects? This second iteration doesn't work. Ruby claims 'result' is a NilClass (on line 17) and cannot take '+' operator
# answerTwo = a.inject(0) { |result, element|
#   result + element if element % 3 == 0 || element % 5 == 0
# }

# puts "second iteration: #{answerTwo}"

