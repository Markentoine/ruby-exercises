# Write a method that takes one argument, a positive integer, and returns the
# sum of its digits.

def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end
