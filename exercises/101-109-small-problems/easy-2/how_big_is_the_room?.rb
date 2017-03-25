SQFEET_TO_SQINCHES = 12
SQFEET_TO_SQCENTIMETERS = 30.48

puts 'Enter the length of the room in feet:'
length = gets.to_f
puts 'Enter the width of the room in feet:'
width = gets.to_f

square_feet = (length * width).round(2)
square_inches = SQFEET_TO_SQINCHES * square_feet
square_centimeters = SQFEET_TO_SQINCHES * square_feet

puts "The area of the room is #{square_feet} square feet,
≈#{square_inches} square inches,
#{square_centimeters} square centimeters."
