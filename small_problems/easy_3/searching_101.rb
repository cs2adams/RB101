# searching_101.rb

def prompt(message)
  puts "==> #{message}"
end

def valid_integer(num)
  num.to_i.to_s == num
end

def get_number
  num = ''
  prompt("Please enter an integer.")
  loop do
    num = gets.chomp
    return num.to_i if valid_integer(num)
    prompt("I'm sorry, that is not a valid integer.")
    prompt("Please try again.")
  end
end

def get_six_numbers
  numbers = []
  while numbers.size < 6
    numbers << get_number
  end
  numbers
end

system('clear')

numbers = get_six_numbers
sixth_number = numbers.pop
message = numbers.include?(sixth_number) ? 'appears' : 'does not appear'
puts "The number #{sixth_number} #{message} in #{numbers}."
