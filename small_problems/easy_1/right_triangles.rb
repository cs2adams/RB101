# right_triangles.rb

def triangle(n)
  n.times { |i| puts "#{' ' * (n - 1 - i)}#{'*' * (i + 1)}" } if n > 0
end

def upside_down_triangle(n)
  n.times { |i| puts "#{' ' * i}#{'*' * (n - i)}" } if n > 0
end

def user_defined_triangle(n, corner)
  if n > 0
    case corner
    when "bottom_right" then n.times { |i| puts "#{' ' * (n - 1 - i)}#{'*' * (i + 1)}" }
    when "top_right"    then n.times { |i| puts "#{' ' * i}#{'*' * (n - i)}" }
    when "bottom_left"  then n.times { |i| puts "#{'*' * (i + 1)}#{' ' * (n - 1 - i)}" }
    when "top_left"     then n.times { |i| puts "#{'*' * (n - i)}#{' ' * i}"}              
    end
  end
end


triangle(5)
triangle(9)
upside_down_triangle(9)
user_defined_triangle(5, "bottom_right")
user_defined_triangle(5, "top_right")
user_defined_triangle(5, "bottom_left")
user_defined_triangle(5, "top_left")
