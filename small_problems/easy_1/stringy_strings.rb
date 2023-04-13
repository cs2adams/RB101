# stringy_strings.rb

def stringy(num_times, start = 1)
  output = String.new
  num_times.times { |i| output += ((i + start) % 2).to_s}
  output
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'