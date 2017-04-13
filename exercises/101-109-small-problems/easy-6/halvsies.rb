# Write a method that takes an Array as an argument, and returns
# two Arrays that contain the first half and second half of the
# original Array, respectively. If the original array contains an
# odd number of elements, the middle element should be palced in
# the first half Array.

def halvsies(array)
  first_half = array.slice(0, (array.size / 2.0).ceil)
  second_half = array.slice(first_half.size, array.size - first_half.size)
  [first_half, second_half]
end
