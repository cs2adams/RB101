# arithmetic_integer.rb

def prompt(message)
  puts "==> #{message}"
end

def get_number(order)
  prompt("Enter the #{order} number:")
  gets.chomp.to_i
end

num1 = get_number('first')
num2 = get_number('second')

prompt("#{num1} + #{num2} = #{num1 + num2}")
prompt("#{num1} - #{num2} = #{num1 - num2}")
prompt("#{num1} * #{num2} = #{num1 * num2}")
prompt("#{num1} / #{num2} = #{num1 / num2}")
prompt("#{num1} % #{num2} = #{num1 % num2}")
prompt("#{num1} ** #{num2} = #{num1**num2}")
