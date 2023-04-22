# question_8.rb

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

barney = flintstones.to_a.select { |flintstone| flintstone[0] == 'Barney'}.flatten
p barney