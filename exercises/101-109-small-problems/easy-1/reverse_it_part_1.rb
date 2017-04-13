# Write a method that takes one argument, a string, and
# returns the same string with the words in reverse order

def reverse_sentence(original_value)
  original_value.split.reverse.join(' ')
end
