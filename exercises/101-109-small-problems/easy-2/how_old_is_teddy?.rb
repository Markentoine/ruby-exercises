# Build a program that randomly generates and prints
# Teddy's age. To get the age, you should generates
# a random number between 20 and 200.

# 1 understand the problem
# => allowed to repeat random value in range 20..200
# => output by print
# 2 set up test cases
# => No need as no input
# 3 Define input, output, data structures
# => input: none
# => output no return value, only print
# => data structure: none
# 4 describe algorithm
# => generate random number in range 20..200
# => save value to variable
# => interpolate variable intp string
# => end

def How_old_is_teddy?(name = 'Teddy')
  puts "#{name} is #{rand(20..200)} years old!"
end

How_old_is_teddy?
How_old_is_teddy?
How_old_is_teddy?
How_old_is_teddy?
How_old_is_teddy?('Oscar')
