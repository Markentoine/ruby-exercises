# Print the even numbers from 1 to 99, inclusive.
# All numbers should be printed on separate lines.

def even_numbers
  1.upto(99) do |number|
    puts number if number.even?
  end
end

even_numbers
