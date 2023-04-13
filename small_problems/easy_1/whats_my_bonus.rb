# whats_my_bonus.rb

def calculate_bonus(salary, get_bonus)
  if get_bonus
    bonus = salary / 2 if get_bonus
  else
    bonus = 0
  end
end


puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000