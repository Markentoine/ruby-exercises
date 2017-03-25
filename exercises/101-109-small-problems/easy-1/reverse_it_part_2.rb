# Write a method that takes one argument, a string containing one or more words,
# and returns the given string with all five or more letter words reversed.
# Each string will consist of only letters and spaces. Spaces should be included
# only when more than one word is present.

def reverse(string)
  words_indexed = string.split
  words_indexed.each { |x| x.reverse! unless x.length < 4 }
  words_indexed.join(' ')
end

my_string = 'try reversing this please!'

puts reverse(my_string)
