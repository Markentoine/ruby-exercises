def calculate_retirement_age
  year = 2016
  puts 'What is your age?'
  age = gets.to_i

  puts 'At what age would you like to retire?'
  retirement_age = gets.to_i
  years_left = retirement_age - age
  puts "It's #{year}. You will retire in #{year + years_left}."
  puts "You only have #{years_left} years of work to go!"
end

calculate_retirement_age
