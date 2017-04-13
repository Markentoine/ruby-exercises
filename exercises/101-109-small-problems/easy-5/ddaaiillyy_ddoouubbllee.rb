# Write a method that takes a string argument and reutnrs a new string
# that contains the values of the original string with all consecutive
# duplicate characters collapsed into a single character.

# 2
# => Input: String object
# => Output: New String that contains values of original string,
# with all consecutive duplicate characters collapsed into a single character

#3
# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''

#4 describe algorithm
# => Apply String#squeeze method on input string

def crunch(unfiltered_string)
  filtered_string = unfiltered_string.squeeze
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
