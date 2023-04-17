# calculator.rb

# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

require 'yaml'
MESSAGES = YAML.load_file("mortgage_calculator_messages.yml")

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
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

def operation_to_message(op)
  op_string = case op
              when '1'
                'Adding'
              when '2'
                'Subtracting'
              when '3'
                'Multiplying'
              when '4'
                'Dividing'
              end
  # Add more code as needed
  op_string
end

prompt("Please enter the desired language")
language = ''
loop do
  language = Kernel.gets().chomp()
  if ['english'].include?(language.downcase)
    break
  end
  prompt("Not a valid language. Please try again.")
end

MESSAGES = YAML.load_file("calculator_messages_#{language.downcase}.yml")

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("#{MESSAGES['hi']} #{name}!")

loop do # main loop
  number1 = ''
  loop do
    prompt(MESSAGES['first_num'])
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt(MESSAGES['valid_num'])
    end
  end

  number2 = ''
  loop do
    prompt(MESSAGES['second_num'])
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt(MESSAGES['valid_num'])
    end
  end

  prompt(MESSAGES['operator_prompt'])

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['valid_operator'])
    end
  end

  prompt("#{operation_to_message(operator)} #{MESSAGES['operating']}")

  result =  case operator
            when '1'
              number1.to_i() + number2.to_i()
            when '2'
              number1.to_i() - number2.to_i()
            when '3'
              number1.to_i() * number2.to_i()
            when '4'
              number1.to_f() / number2.to_f()
            end

  prompt("#{MESSAGES['result']} #{result}")

  prompt(MESSAGES['again'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES['thanks'])
