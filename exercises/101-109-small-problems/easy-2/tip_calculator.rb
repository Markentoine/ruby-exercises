def tip_calculator
  puts 'What is the bill?'
  bill = gets.to_f

  puts 'What is the tip percentage?'
  percentage = gets.to_f

  tip = (bill / percentage).round(2)
  total = (bill + tip).round(2)

  puts "The tip is €#{tip}"
  puts "The total is €#{total}"
end

tip_calculator
