# Write a method that takes one argument, a string, and returns the same string
# with the words in reverse order.

def reverse(string)
  words_indexed = string.split
  words_indexed.reverse_each { |x| print x, ' ' }
end

my_string = 'please reverse these words'

reverse(my_string)
