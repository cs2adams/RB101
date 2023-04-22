# question_1.rb

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

spot_present1 = !!ages.fetch('Spot', nil)
spot_present2 = ages.has_key?('Spot')
spot_present3 = !!ages['Spot']

puts spot_present1
puts spot_present2
puts spot_present3