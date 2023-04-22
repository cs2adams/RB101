# question_3.rb

def factors(number, divisor = number)
  return number if divisor == 1
  return if divisor < 1
  factors = []
  factors << number / divisor if number % divisor == 0
  factors << factors(number, divisor - 1)
  factors.flatten
end

p factors(15)
p factors(90)
p factors(0)
p factors(-10)

# Bonus 1: Checks that divisor divides evenly into number
# Bonus 2: Return factors array