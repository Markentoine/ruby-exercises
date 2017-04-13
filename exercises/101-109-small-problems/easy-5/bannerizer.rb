# Write a method that will take a short line of text, and print it
# within a box.

# 1 understand the problem
# => box needs to grow with text length

# 2 no test cases

# 3 input: string, output, string within a box

# 4 describe algorithm
# => def horizontal_rule as corners and text length + 2 * -
# => def filler as borders, and text lenght + 2 * ' '
# => def text_line as borders, and ' ' + text + ' '

#init print_in_box method with text as argument
#magic

def print_in_box(text)
  horizontal_rule = "+#{'-' * (text.size + 2)}+"
  filler = "|#{' ' * (text.size + 2)}|"
  text_line = "| #{text} |"

  puts horizontal_rule
  puts filler
  puts text_line
  puts filler
  puts horizontal_rule
end

print_in_box('To boldly go where no one has gone before.')
