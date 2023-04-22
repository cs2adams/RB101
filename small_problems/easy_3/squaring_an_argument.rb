# multiplying_two_numbers.rb

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

def nth_power(num, power)
  current_num = num
  1.upto(power - 1) { |_| current_num = multiply(current_num, num) }
  current_num
end

puts square(5)
puts square(-8)
