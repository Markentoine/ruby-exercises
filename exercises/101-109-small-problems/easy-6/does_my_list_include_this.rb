# Write a method named include? that takes an Array and a search
# value as arguments. This method should return true if search
# value is in the array, false if it is not. You may not use the
# Array#include? method in your solution

def include?(some_array, search_value)
  some_array.any? { |element| element == search_value }
end
