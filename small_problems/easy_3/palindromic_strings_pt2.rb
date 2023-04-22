# palindromic_strings_pt2.rb

def palindrome?(string)
  string == string.reverse
end

def real_palindrome?(string)
  valid_chars = %w(1 2 3 4 5 6 7 8 9 0 a b c d e f g) +
                %w(h i j k l m n o p q r s t u v w x y z)
  string_array = string.split('')

  new_string = ''
  string_array.each do |char|
    new_string << char.downcase if valid_chars.include?(char.downcase)
  end
  palindrome?(new_string)
end
