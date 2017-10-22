=begin
  -case insesnsitive
  -cant use reverse
  -cant use regeex

  algorithm
  -create array containing A-Z and a-z
  -assuming you'll get a string, select any letters included
  -traverse index 0..size/2 -1 (if even) and check if index matches
  -index+1
  -same logic for uneven length word
  -character == char or char upcase
=end

def palindrome(word)
  uppercase_letters = ('A'..'Z').to_a
  lowercase_letters = ('a'..'z').to_a

  letters_array = word.chars.select { |letter| uppercase_letters.include?(letter) || lowercase_letters.include?(letter)}

  0.upto((letters_array.size / 2) -1) do |index|
    return false unless letters_array[index].downcase == letters_array[-(index + 1)].downcase
  end
  true
end
