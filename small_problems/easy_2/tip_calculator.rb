# tip_calculator.rb

system("clear")

print "What is the bill? "
bill = gets.chomp.to_f

print "What is the tip percentage? "
percentage = gets.chomp.to_f
tip = bill * (percentage / 100)
total = bill + tip

puts "\nThe tip is $#{format('%.2f', tip)}"
puts "The total is $#{format('%.2f', total)}"
