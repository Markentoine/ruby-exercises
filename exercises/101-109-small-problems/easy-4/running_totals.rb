
# Write a method that takes an Array of numbers, and returns an Array with the
# same number of elements, and each element has the running total from the
# original Array.

def running_total(array)
  array.map.with_index do |_, index|
    array[0..index].inject(:+)
  end
end
