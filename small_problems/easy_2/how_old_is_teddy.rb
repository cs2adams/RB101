# how_old_is_teddy.rb

puts('Please enter your name')
name = 'Teddy'
new_name = gets.chomp
name = new_name unless new_name.length.empty?

age = rand(181) + 20

puts "#{name} is #{age} years old!"
