# this first iteration I didn't figure out how to incorporate the upper limit of 4E6
# def fibonacci(n)
#   a,b = 0,1
#   n.times do
#     a,b = b,a+b
#   end
# end

# a = (1..50).to_a
# b = a.take_while { |n| n <= 4E6
#   fibonacci(n)
# }
# puts b

def fib_up_to(max)
  a,b = 1,1
  while a <= max
    yield a #yield here takes the block on line 23, where each integer 'a' gets inserted into the array
    a,b = b,a+b
  end
end

fibArray = []
fib_up_to(4E6) { |f| fibArray << f }

p fibArray.inspect

evenFibArray = fibArray.inject([]) { |result, element|
  result << element if element % 2 == 0
  result
}

answer = evenFibArray.inject { |result, element| result + element }

puts "second iteration answer: #{answer}"