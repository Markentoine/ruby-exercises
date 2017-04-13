# Write a method that takes two arguments,
# a string and a positive integer, and prints
# the string as many times as the integer indicates.

def repeat(sentence, number)
  if sentence.size == 0
    puts 'Oops, try entering a string with characters!'
    exit
  end
  if number < 1
    puts 'Oh no, I only accept positive integers as input'
    exit
  end

  number.times { puts sentence }
end

repeat('lol', 5)
