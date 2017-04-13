# Write a method that takes one argument, a string containing
# one or more words, and returns the given string with
# all five or more letter words reversed. Each string will
# consist of only letters and spaces. Spaces should be incldued only when more
# than one word is present.

def reverse_words(string_of_words)
  word_array = []

  string_of_words.split.each do | index |
    index.reverse! if index.size > 4
    word_array << index
  end

  word_array.join(' ')
end

p reverse_words('Professional')
p reverse_words('Walk around the block')
p reverse_words('Launch School')
p reverse_words(' Professional')
p reverse_words('Professional ')
p reverse_words('1Professional ')
