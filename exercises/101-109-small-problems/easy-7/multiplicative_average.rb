# Write a method that takes an Array of integers as input,
# multiplies all of the numbers together, divides the
# result by the number of entries in the Array, and then prints the result
# rounded to 3 decimal places.

def show_multiplicative_average(integers)
  sum = integers.reduce(1, :*)
  average = Float(sum) / integers.count
  puts "The result is #{sprintf("%.3f", average)}"
end
