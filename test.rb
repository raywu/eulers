def fib_up_to(max)
  a,b = 0,1
  while a <= max
    yield a #yield here takes the block on line 29, where each integer 'a' gets inserted into the array
    a,b = b,a+b
  end
end

fibArray = []
fib_up_to(4E6) { |a| fibArray << a }

p fibArray.inspect
