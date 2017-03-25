loop do
  puts 'Should i stop looping?'
  answer = gets.chomp.downcase
  break if answer == 'yes'
  puts 'Incorrect answer. Please answer "yes".'
end
