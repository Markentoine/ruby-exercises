# Write a method that takes two Array arguments,

# in which each Array contains a list of numbers,

# and returns a new Array that contains the product
# of each pair of numbers from the arguments that have
# the same index.

# You may assume the arguments contain the same number of elements

def multiply_list(array_1, array_2)
  array_1.zip(array_2).map { |el| el.reduce(1, :*)}
end
