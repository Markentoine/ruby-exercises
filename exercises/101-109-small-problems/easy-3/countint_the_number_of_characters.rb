# Write a program that will ask a user for an input of a word
# or multiple words and give back the number of characters.
# Spaces should not be counted as characters

# 1 understand the problem
# => what a word is, isnt stated
# => remove spaces from sentence length
# 2 setup test cases
# => ''
# => 'walk'
# 3 describe input, output and data structure
# => input: String, output: String indicating length of word array, data structure: array_of_numbers
# 4 describe algorithm

print 'Please write word or multiple words:'
user_input = gets.chomp

length = user_input.split(%r{\s*}).count

puts "There are #{length} characters in #{user_input}."
