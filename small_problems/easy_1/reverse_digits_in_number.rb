# reverse_digits_in_number.rb

def reversed_number(n)
  original = n.to_s.split("")
  reversed = []

  while original.size > 0
    reversed << original.pop
  end

  reversed.join.to_i
end

puts reversed_number(12345) == 54321
puts reversed_number(12213) == 31221
puts reversed_number(456) == 654
puts reversed_number(12000) == 21 # No leading zeros in return value!
puts reversed_number(12003) == 30021
puts reversed_number(1) == 1