# madlibs.rb

def madlibs
  user_input = {
                  noun:       "",
                  verb:       "",
                  adjective:  "",
                  adverb:     ""
  }

  user_input.each do |type, word|
    print "Enter a #{type}: "
    user_input[type] = gets.chomp
  end

  puts "\nDo you #{user_input[:verb]} your #{user_input[:adjective]} #{user_input[:noun]} #{user_input[:adverb]}? That's hilarious!"
end

madlibs