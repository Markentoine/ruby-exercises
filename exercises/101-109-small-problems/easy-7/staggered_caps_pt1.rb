# Write a method that takes a String as an argument, and
# returns a new String that contains the original value
# using a staggered capitalization scheme in which every
# other character is capitalized, and the remaining
# characters are lowercase. Characters that are not letters
# should not be changed, but count as characters when switching
# between upper and lowercase.

# 1 Understand the problem
# => Capitalize every other character in a input string input_string
# => Non-alphabetic should not be changed, but update the counter

# 2 Setup test cases
# staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# staggered_case('ALL_CAPS') == 'AlL_CaPs'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# 3 Describe input, method argument, passed to local variable input_string
# Output: A new String output_string that contains the same values as input_string,
# but every second alphabetic character is capitalized.

# 4 Describe algorithm
# => Pass input to method via method argument input_string
# => initialize counter = 0
# => Call map on input_string.chars, and assign result to
# output_string
# => on each block iteration assign char to local variable |char| and check:
# => > is counter even? Then upcase char
# => > is the counter odd? then downcase char
# => END block

def staggered_case(string, reversed_order = false)
  case reversed_order
  when false
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
when true
  result = ''
  need_lower = true
  string.chars.each do |char|
    if need_lower
      result += char.downcase
    else
      result += char.upcase
    end
    need_lower = !need_lower
  end
  result
end
end

puts staggered_case('ignore 77 the 444 numbers', true)
