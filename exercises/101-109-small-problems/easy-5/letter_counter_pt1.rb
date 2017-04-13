# Write a method that takes a string with one or more space separated
# words and returns a hash shat shows the number of words of different
# sizes.

def word_sizes(sentence)
  words_per_size = Hash.new(0)
  sentence.split(' ').each { |word| words_per_size[word.size] += 1 }
  words_per_size
end
