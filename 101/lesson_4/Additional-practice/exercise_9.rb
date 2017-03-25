words = "the flintstones rock"

def titelize(title)
  arr = title.split
  arr.map! { |word| word.capitalize! }
  arr.join(' ')
end

puts titelize(words)
