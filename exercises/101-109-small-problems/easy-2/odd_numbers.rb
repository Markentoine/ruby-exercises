# Print all odd numbers from 1 to 99, inclusive.
# All numbers should be printed on separate lines.

def odd_numbers
  1.upto(99) do |number|
    puts number if number.odd?
  end
end

odd_numbers
