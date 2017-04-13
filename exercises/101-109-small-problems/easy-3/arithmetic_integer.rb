# Write a program that prompts the user for two positive integers,
# and then prints the results of the following operations on those
# two numbers: addition, subtraction, product, quotient, remainder,
# and power. Do not worry about validating the input

# 1 understand the problem
# => no need for input validation
# 2 setup test cases
# => 23 + 17 = 40
# => 23 - 17 = 6
# 23 * 17 = 391
# => 23 % 17 = 6
# => 23 ** 17 = myky
# 3 describe input, output and data structure
# => input: 2 separate integers, output: result of operation, an integer data structure: integer
# 4 describe algorihm
# => GET first number
# => SET first number
# => GET second number
# => SET second number
# => print first number + second number
# => print first number - second number
# => print first number * second number
# => print first number / second number
# => print first number % second number
# => print first number ** second number

puts '==> Enter the first number:'
first_number = gets.to_i
puts '==> Enter second number:'
second_number = gets.to_i

puts "==> #{first_number} + #{second_number} = #{first_number + second_number}"
puts "==> #{first_number} - #{second_number} = #{first_number - second_number}"
puts "==> #{first_number} * #{second_number} = #{first_number * second_number}"
puts "==> #{first_number} / #{second_number} = #{first_number / second_number}"
puts "==> #{first_number} % #{second_number} = #{first_number % second_number}"
puts "==> #{first_number} ** #{second_number} = #{first_number ** second_number}"
