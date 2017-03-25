statement = "The Flintstones Rock"

hsh = Hash.new(0)

statement.each_char do |letter|
  hsh[letter] += 1
end

puts hsh
