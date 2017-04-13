# Write a method that takes a single String argument and returns
# a new string that contains the original value of the argument,
# but the first letter of every word is no capitalized.

# You may assume that words are any sequence of non-blank characters,
# and that only the first character of each word must be considered.

# 1 Understand the problem
# => no need for input validation, simply split words at empty characters

# 2 Setup test cases
# word_cap('four score and seven') == 'Four Score And Seven'
# word_cap('the javaScript language') == 'The Javascript Language'
# word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
#word_cap('')

# 3 Describe inputs, outputs, and data structure
# => Input: A empty or non-empty string
# => Output New string with same value, all first letters capitalized and rest lower case
# => Data Structure: An Array

# 4 Describe algorithm
# set words = input_sentence.split(' ')
# words.map { |word| word.capitalize }
# end

def words_cap(input_sentence)
  input_sentence.split.map(&:capitalize).join(' ')
end

puts words_cap('four score and seven')
