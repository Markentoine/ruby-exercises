# Write a method that takes a string, and then returns a hash
# that contains three entries:

# one represents the number of characters in the string that are
# lowercase letters

# one the number of characters that are uppercase letters

# and one the number of characters that are neither.

# 2 Setup test cases:
# letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# 3 Describe inputs, outputs, and data structure
# => Input: A string, no need for input validation
# => Output: Hash with three key-value pairs according to specifications
# => Data structure: Hash object, possibly an Array

# 4 Describe algorithm
# Initialize new empty hash with default value 0
# LOOP over String object sentence
# on each iteration check three condtions
# => character in a-z? increment [lowercase] by one
# => character in A-Z? increment [uppercase] by one
# => else increment [neitehr] by one
#end LOOP

#return hash

def letter_count(sentence)
  counts = {}
  characters = sentence.chars

  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/}
end

puts letter_count('')
