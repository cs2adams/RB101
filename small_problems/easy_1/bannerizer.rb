# bannerizer.rb
## Includes the "Further Exploration" challenge

def print_in_box(text, max_length = 80)
  string_length = text.length
  box_width = string_length > (max_length - 4) ? max_length : string_length + 4

  print_border(box_width)
  print_buffer(box_width)
  print_text(text, string_length, box_width)
  print_buffer(box_width)
  print_border(box_width)
end

def print_border(box_width)
  print "+"
  (box_width - 2).times { print "-"}
  puts "+"
end

def print_buffer(box_width)
  print "|"
  (box_width - 2).times { print " "}
  puts "|"
end

def print_text(text, string_length, box_width)

  if string_length > box_width - 4

    num_incomplete_lines = string_length / box_width

    num_incomplete_lines.times do |i|
      puts "| #{text[i * (box_width - 4)... (i + 1) * (box_width - 4)]} |"                # This will print all but the last line
    end

    num_whitespace = (box_width - 4) - (string_length % (box_width - 4))
    puts "| #{text[num_incomplete_lines * (box_width - 4)..-1]}#{" " * num_whitespace} |" # This will pring the last line
  else
    puts "| #{text} |"
  end
end


print_in_box('To boldly go where no one has gone before.')
print_in_box('')

print_in_box('Modify this method so it will truncate the message if it will be too wide to fit inside a standard terminal window (80 columns, including the sides of the box). For a real challenge, try word wrapping very long messages so they appear on multiple lines, but still within a box.')