hash = Hash.new

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones.each_with_index { |item, index| hash[item] = index }

puts hash

