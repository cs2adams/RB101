# when_will_i_retire.rb

system('clear')
require 'date'

print 'What is your age? '
current_age = gets.chomp.to_i

print 'At whage age would you like to retire? '
retirement_age = gets.chomp.to_i

working_years = retirement_age - current_age
current_year = Date.today.year
retirement_year = current_year + working_years

puts "\nIt's #{current_year}. You will retire in #{retirement_year}."
puts "You only have #{working_years} years of work to go!"
