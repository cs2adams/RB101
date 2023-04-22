# palindromic_numbers.rb

def palindromic_number?(int)
  int.to_s.reverse.to_i == int
end
