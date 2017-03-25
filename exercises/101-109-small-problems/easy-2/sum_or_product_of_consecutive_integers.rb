while true
  puts 'Hello, please enter an integer greater than 0:'
  input_value = gets.chomp.to_i
  break if input_value.is_a?(Integer) && input_value > 0 
  puts 'Not a valid number, please enter a integer greater than 0: '
  input_value = gets.chomp
end

def choose_operation(sum, prod, input)
  puts "Enter 's' to compute the sum, 'p' to compute the product."
  operation = gets.chomp.downcase
  if operation == 's'
    puts "The sum of the integers between 1 and #{input} is #{sum}"
  elsif operation == 'p'
    puts "The proudct of the integers between 1 and #{input} is #{prod}"
  end  
end

def perform_summation(arg)
  sum = (1..arg).inject { |sum, n| sum + n }
end

def perform_product(arg)
  product = (1..arg).inject { |sum, n| sum * n }
end

choose_operation(perform_summation(input_value), perform_product(input_value), input_value)
