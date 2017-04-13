# Modify the method from the previous exercise so it
# ignores non-alphabetic characters when determining
# whether it should uppercase or lowercase each letter.
# The non-alphabetic characters should still be included
# in the return value; they just don't count when toggling
# the desired case.

def staggered_case(string, argument = true)
  caps = true
  result = string.split('')
  result.each do |char|
    if argument || ('a'..'z').to_a.include?(char.downcase)
      caps ? char.upcase! : char.downcase!
      caps ? caps = false : capse = true
    end
  end
end
