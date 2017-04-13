# Write a method that takes two strings as arguments, determines the longest
# of the two strings, and then returns the result of concatenating the shortest
# string, the longer string, and the shorter string once again. You may assume
# the strings are of different length.

def short_long_short(some_string, another_string)
  some_string.size > another_string.size ? another_string+some_string+another_string : some_string+another_string+some_string
end
