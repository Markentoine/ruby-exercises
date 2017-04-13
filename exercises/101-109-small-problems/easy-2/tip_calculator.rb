# Create a simple tip calculator. The program should prompt
# for a bill amount and a tip rate. The program must compute
# the tip and then display both the tip and the total amount
# of the bill.

def tip_calculator
  while true
    puts 'What is the bill?'
    bill = gets.to_i

    break if bill >= 0
    puts 'Oops, I am not paying you..'
  end

  puts 'What is the tip percentage? (please give in integer format, e.g. 15)'
  tip_percentage = gets.to_i

  tip = ((bill / 100) * tip_percentage).to_f
  total = bill + tip

  puts "The tip is $#{sprintf('%.2f',tip)}"
  puts "The total $#{sprintf('%.2f',total)}"
end

tip_calculator
