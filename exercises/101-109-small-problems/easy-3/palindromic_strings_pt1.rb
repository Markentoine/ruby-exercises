# Write a method that returns true if the string passed as an argument is a
# palindrome, false otherwise

# Case matters, and all characters should be considered.

def palindrome?(some_argument)

  if some_argument.size == 0
    puts "You entered an empty String / Array. To evaluate if the String / Array is palindromic, please enter a String / Array with some values."
    exit
  end

  some_argument == some_argument.reverse
end
