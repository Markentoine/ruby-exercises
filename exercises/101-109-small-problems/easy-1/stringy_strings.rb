# Write a method that takes one argument, a positive integer, and returns a
# string of alternating 1s and 0s, always starting with 1. The length of the
# string should match the given integer.


def stringy(length, opt = 1)
  binary = ''
  counter = 0

  if length < 1
    puts 'Oops, try a positive integer for input'
    exit
  end

  if opt == 1
    length.times do
      counter.remainder(2) == 0 ? binary << '1' : binary << '0'
      counter += 1
    end
  elsif opt == 0
    length.times do
      counter.remainder(2) == 0 ? binary << '0' : binary << '1'
      counter += 1
    end
  end
  binary
end

p stringy(6, 0)
p stringy(9, 0)
