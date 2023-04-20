# how_big_is_the_room.rb

SQUARE_INCHES_PER_SQUARE_FOOT = 144
SQUARE_CM_PER_SQUARE_FOOT = 929.0313

puts "What is the length of your room in feet?"
length_feet = gets.chomp.to_f

puts "What is the width of your room in feet?"
width_feet = gets.chomp.to_f

area_feet = length_feet * width_feet
area_inches = area_feet * SQUARE_INCHES_PER_SQUARE_FOOT
area_centimetres = area_feet * SQUARE_CM_PER_SQUARE_FOOT

puts "The area of the room is #{format('%.2f', area_feet)}"\
  " square feet (#{format('%d', area_inches)} square inches or"\
  " #{format('%d', area_centimetres)} square centimetres)."
