# Write a method that takes a string as an argument and returns a new string
# in which every uppercase letter is replaced by its lowercase version, and
# every lowercase by its uppercase version. All other characters should be
# unchanged.

# 1 Understand the problem
# => swap of case for character

# 2 Setup test cases
# swapcase('CamelCase') == 'cAMELcASE'
# swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# 3 Describe inputs, outputs and data structure:
# => input: empty or non-empty string
# => no need to validate input
# => output: String with characters swapped
# => data structure: Array

# 4 describe algorithm
# LOOP over input_sentence, assign each character to local variable char in turn
# => evaluate if char matches regexp a-z, if yes then upcase it
# => evaluate if char matches regexp A-Z, if yes, tehn downcase it
# END LOOP
# return new string

def swapcase(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end

puts swapcase('CamelCase')
