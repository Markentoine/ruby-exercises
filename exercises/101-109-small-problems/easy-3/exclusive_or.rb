# The || operator returns true if either or both of its operands are true,
# false if both operands are false. The && operator returns true if both of
# its operands are true, and false if either operand is false. This works
# great until you need only one of two conditions to be true, the so-called
# exclusive or. In this exercise, you will write a method named xor that takes
# two arguments, and returns true if exactly one of its arguments is true,
# false otherwise.

def xor?(xor_1, xor_2)
  case
  when xor_1 && !xor_2
    true
  when !xor_1 && xor_2
    true
  else
    false
  end
end

puts xor?(5.even?, 4.even?)
puts xor?(5.odd?, 4.odd?)
puts xor?(5.odd?, 4.even?)
puts xor?(5.even?, 4.odd?)
