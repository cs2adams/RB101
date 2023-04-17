# mortgage_calculator.rb
require 'yaml'
MESSAGES = YAML.load_file('mortgage_calculator_messages.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
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

# Request loan amount and validate
prompt(MESSAGES['welcome'])

loop do
  prompt(MESSAGES['prompt_loan_amount'])

  loan_amount = ''
  loop do
    loan_amount = gets.chomp
    if valid_number?(loan_amount) && loan_amount.to_f > 0
      loan_amount = loan_amount.to_f
      break
    else
      prompt(MESSAGES['valid_dollar_amount'])
    end
  end

  # Request APR and validate
  prompt(MESSAGES['prompt_apr'])
  apr = ''
  loop do
    apr = gets.chomp
    if valid_number?(apr) && apr.to_f >= 0 && apr.to_f < 1
      apr = apr.to_f
      break
    end
    prompt(MESSAGES['valid_percentage'])
  end
  monthly_interest = apr / 12

  prompt(MESSAGES['prompt_loan_duration_unit'])
  duration_unit = ''
  loop do
    duration_unit = gets.chomp
    if duration_unit.downcase.start_with?('y')
      duration_unit = 'years'
      break
    elsif duration_unit.downcase.start_with?('m')
      duration_unit = 'months'
      break
    end
    prompt("#{duration_unit} #{MESSAGES['duration_unit_not_recognized']}")
  end

  prompt("#{MESSAGES['loan_duration']} #{duration_unit}s.")
  duration = ''
  loop do
    duration = gets.chomp
    break if valid_integer?(duration) && duration.to_f > 0
    prompt("#{duration} #{MESSAGES['invalid_duration']}")
  end
  duration = duration.to_i

  duration *= 12 if duration_unit == 'years'

  monthly_payment = loan_amount * (monthly_interest /
    (1 - (1 + monthly_interest)**(-duration)))

  prompt("#{MESSAGES['monthly_payment']} #{format('%.2f', monthly_payment)}")
  prompt(MESSAGES['another_calculation'])

  another_calculation = ''
  loop do
    another_calculation = gets.chomp.downcase
    break if ['y', 'n'].include?(another_calculation.downcase[0])
    prompt(MESSAGES['invalid_calc_response'])
  end
  break if another_calculation.start_with?('n')
end

prompt(MESSAGES['goodbye'])
