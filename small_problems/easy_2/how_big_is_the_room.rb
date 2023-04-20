# how_big_is_the_room.rb

SQUARE_FEET_PER_SQUARE_METRE = 10.7639

puts "What is the length of your room in metres?"
length_metres = gets.chomp.to_f

puts "What is the width of your room in metres?"
width_metres = gets.chomp.to_f

area_metres = length_metres * width_metres
area_feet = area_metres * SQUARE_FEET_PER_SQUARE_METRE

puts "The area of the room is #{format('%.1f', area_metres)}"\
  " square metres (#{format('%.2f', area_feet)} square feet)."
