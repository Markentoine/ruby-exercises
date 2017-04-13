# Build a program that asks a user for the length and
# width of a room in meters and then displays the area
# of the room in both square meters and square feet.

FEET_TO_INCHES = 12
FEET_TO_CENTIMETERS = 30.48


def how_big_is_the_room?
  puts 'Enter the length of the room in feet'
  room_length_in_feet = gets.to_f
  puts 'Enter the width of the room in feet'
  room_width_in_feet = gets.to_f

  room_size_in_feet = (room_width_in_feet * room_length_in_feet).round(2)
  room_size_in_inches = (room_size_in_feet * FEET_TO_INCHES).round(2)
  room_size_in_centimeters = (room_size_in_feet * FEET_TO_CENTIMETERS).round(2)
  puts 'calculating...'
  puts "The area of the room is #{room_size_in_feet} square feet (#{room_size_in_inches} square inches, #{room_size_in_centimeters} square centimeters)."
end

how_big_is_the_room?
