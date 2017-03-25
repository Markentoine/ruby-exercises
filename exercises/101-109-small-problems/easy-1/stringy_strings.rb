# Write a method that takes one argument, a positive integer, and returns a
# string of alternating 1s and 0s, always starting with 1. The length of the
# string should match the given integer.

def stringy(size, start_w_zero = 1)
  numbers = []

  if start_w_zero.zero? 0
    size.times do |index|
      number = index.even? ? 0 : 1
      numbers << number
    end

  else
    size.times do |index|
      number = index.even? ? 1 : 0
      numbers << number
    end
  end
  numbers.join
end

puts stringy(5)
puts stringy(6)
puts stringy(5, 0)
puts stringy(6, 0)
