# Write a method that combines two Arrays passed in as
# arguments, and returns a new Array that contains all
# elements from both Array arguments, with elements
# taken in alternation.

# You may assume that both both input Arrays are non-empty,
# and that they have the same number of elements.

def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element << array2[index]
  end
  result
end
