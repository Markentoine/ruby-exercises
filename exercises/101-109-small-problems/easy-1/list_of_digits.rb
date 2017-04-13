# Write a method that takes one argument, a positive
# integer, and returns a list of the digits in the
# number.

def digit_list(input_integer)
  input_integer.to_s.chars.map(&:to_i)
end

puts "Please give me a positive integer. I'll split it up into it's digits"
user_input = gets.to_i

while user_input < 1
  puts 'That is not a valid input. Try a integer above zero'
  user_input = gets.to_i
end
