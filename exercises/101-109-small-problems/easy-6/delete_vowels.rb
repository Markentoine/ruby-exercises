# Write a method that takes an array of strings, and returns an
# array of the same string values, except with the vowels(a,e,i,o,u)
# removed.

# 1 Understand the problem
# => delete vowels for each array element

# 2 Setup test cases
# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# 3 Describe input, output, data structure
# Input: Array with string objects
# Output:Array with string objects with vowel characters removed
# Data structure: Array

# 4 describe algorithm
# =>set new arr = traverse array with each
# => each.delete "aeiou"

def remove_vowels(words)
  words.map { |string| string.delete('aeiouAEIOU') }
end
