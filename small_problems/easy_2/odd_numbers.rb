# odd_numbers.rb

# (1..99).each { |i| puts i if i.odd? }

odd_numbers = (1..99).to_a.select { |i| i % 2 == 1 }
puts odd_numbers
