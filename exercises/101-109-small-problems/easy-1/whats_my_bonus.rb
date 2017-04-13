# Write a method that takes two arguments, a positive integer and a boolean,
# and calculates the bonus for a given salary. If the boolean is true, the bonus
# should be half of the salary. If the boolean is false, the bonus should be 0.

def calculate_bonus(salary, get_bonus)
  if salary < 1
    puts 'Oops, please try entering a positive integer'
    exit
  end
  get_bonus ? ( salary / 2) : 0
end
