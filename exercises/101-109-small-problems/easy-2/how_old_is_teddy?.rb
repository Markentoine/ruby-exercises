def age(name = 'Teddy')
  puts "#{name} is #{rand(20..200)} years old!"
end

puts 'What is your name?'
name = gets.chomp

age(name)
