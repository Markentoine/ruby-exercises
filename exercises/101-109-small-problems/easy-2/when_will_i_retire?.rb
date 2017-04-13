# Build a program that displays when the user will
# retire and how many years she has to work till
# retirement.

def when_will_I_retire?
  year = Time.now.year
  while true
    puts 'What is your age?'
    age = gets.to_i
    break if age >= 0
    puts "You can't work if your age is negative"
  end

  puts "At what age would you like to retire?"
  retirement_age = gets.to_i

  if retirement_age < age
    puts 'You are already retired'
    exit
  end

  years_to_retirement = retirement_age - age

  puts "Its #{year}. You will retire in #{year+years_to_retirement}."
  puts "You have only #{years_to_retirement} years of work to go!"
end

when_will_I_retire?
