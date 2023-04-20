# always_return_negative.rb

def negative(num)
  -num.abs
end

puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0
