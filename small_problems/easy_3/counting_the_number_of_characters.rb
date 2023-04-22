# counting_the_number_of_characters.rb

print "Please write a word or multiple words: "

words = gets.chomp
words_array = words.split

num_chars = 0
words_array.each { |word| num_chars += word.size }

puts "There are #{num_chars} characters in \"#{words}\"."
