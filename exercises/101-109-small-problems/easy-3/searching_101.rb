# Write a program that solicits 6 numbers from the user,
# then prints a message that describes whether or not the
# 6th number appears amongst the first 5 numbers.

counter = 0
array_of_numbers = []
puts "Welcome, you'll enter 6 numbers. I'll then tell you if the 6th number is
present among the first 5 numbers."

while counter < 6
  puts ' => Please enter a number'
  number = gets.chomp
  next if number.to_i.to_s != number

  array_of_numbers << number
  counter += 1
end

if array_of_numbers[0..4].include?(array_of_numbers[-1])
  puts "#{array_of_numbers[-1]} is present in #{array_of_numbers[0..4]}"
else
  puts "#{array_of_numbers[-1]} is NOT present in #{array_of_numbers[0..4]}"
end
