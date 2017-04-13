# Write a method that returns true if its integer argument is
# palindromic, false otherwise.

def palindromic_number?(number)
  number_reversed = number.to_s.reverse.to_i
  number_reversed == number
end

puts palindromic_number?(5)
