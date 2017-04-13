# Write a program that asks the user to enter an integer
# greater than 0, then asks if the user wants to determine
# the sum or product of all numbers between 1 and the
# entered integer.

while true
  print 'Please enter an integer greater than 0:'
  input_integer = gets.to_i
  break if input_integer > 0
  puts 'Please note that the integer should be greater than 0'
end

sum = 1.upto(input_integer).reduce(:+)
product = 1.upto(input_integer).reduce(1, :*)
while true
  print "Please enter 's' to compute the sum, or 'p' to compute the product."
  conditional_input = gets.chomp

  if conditional_input == 's'
    puts "The sum of integers between 1 and #{input_integer} is #{sum}."
    exit
  elsif conditional_input== 'p'
    puts "The product of integers between 1 and #{input_integer} is #{product}"
    exit
  else
    puts "Please select either 'p' or 's'"
  end
end
