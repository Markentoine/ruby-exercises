# Given a string of words separated by spaces, write a method that
# takes this string of words and returns a string in which the
# first and last letters of evey word is swapped

def swap(sentence)
  word_array = sentence.split(' ')
  word_array.each do |word|
    word[0], word[-1] = word[-1], word[0]
  end
  word_array.join(' ')
end
