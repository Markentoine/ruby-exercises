# Modify the word_sizes method from the previous exercise to exclude
# non-letters when determining word size. For instance, the length of
# "it's" is 3, not 4.

def word_sizes(sentence)
  words_per_size = Hash.new(0)
  sentence.string.split.each do |word|
    clean_word = word.delete('^A-Za-z')
    counts[clean_word.size] += 1
  end
  counts
end
