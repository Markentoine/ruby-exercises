# Write a method that takes one argument in the form of an integer or a float;
# this argument may be either positive or negative. This method should check
# if a number is odd, returning true if its absolute value is odd. You may
# assume that only integers are passed in as arguments.

def is_odd?(number)
  number.abs.remainder(2) != 0
end

puts 'Please enter a integer, I will evaluate if its odd.'
user_input = gets.to_i

while user_input == 0
  puts 'Please input a number different than 0'
  user_input = gets.to_i
end

puts is_odd?(user_input)
