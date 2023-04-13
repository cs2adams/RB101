# get_middle_character.rb

def center_of(string)
  middle = string.length / 2
  string.size.even? ? string[middle - 1.. middle] : string[middle]
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'