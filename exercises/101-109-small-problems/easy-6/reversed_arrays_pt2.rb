# Write a method that takes an Array, and returns a new Array with the elements
# of the original list in reverse order. Do not modify the original list.

def reverse(array)
  result_array = []
  array.reverse_each { |element| result_array << element }
  result_array
end
