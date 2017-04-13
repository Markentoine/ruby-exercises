# Write a method that determines and returns the ASCII
# string value of a string that is passed in as an argument.
# The ASCII string value is the sum of the ASCII values of
# every character in the string. (You may use String#ord to
# determine the ASCII value of a character.)

def ascii_value(sentence)
  ascii_value = 0
  sentence.each_char do |char|
    ascii_value += char.ord
  end
  ascii_value
end
