# sum_or_product_of_consecutive_integers.rb

def operate(max_num, operation)
  operators = { 's' => :+, 'p' => :* }
  operator = operators[operation]
  1.upto(max_num).inject(operator)
end

def get_operation_name(operation)
  case operation
  when 's' then 'sum'
  when 'p' then 'product'
  end
end

def valid_number?(num)
  return false if num == '' || num == '.'
  num_periods = 0
  num_array = num.split("")

  num_array.each do |digit|
    return false if !['.', '0', '1', '2', '3',
                      '4', '5', '6', '7', '8', '9'].include?(digit)
    num_periods += 1 if digit == '.'
    return false if num_periods > 1
  end
  true
end

def valid_integer?(num)
  valid_number?(num) && num.to_f.floor - num.to_f == 0
end

system('clear')

puts ">> Please enter an integer greater than 0:"
number = ''
loop do
  number = gets.chomp
  break if valid_integer?(number) && number.to_i > 0
  puts ">> Invalid input. Please try again."
end
number = number.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = ''
loop do
  operation = gets.chomp.downcase
  break if ['s', 'p'].include?(operation)
  puts ">> Invalid input. Please try again."
end

puts "The #{get_operation_name(operation)} of the integers between"\
  + " 1 and #{number} is #{operate(number, operation)}."
