def get_name
  puts 'What is your name?'
  name = gets.chomp
end

def greeter(name)
  if name[-1] == '!'
    name = name.chop
    puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
  else
    puts "Hello #{name}."
  end
end

greeter(get_name)
