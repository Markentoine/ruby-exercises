# Write a method that takes one argument, an array containing
# integers, and returns the average of all numbers in the array.
# The array will never be empty and the number will always be
# positive integers.

def average(array_of_integers)
  (array_of_integers.reduce(:+) / array_of_integers.count).to_f
end

puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])
