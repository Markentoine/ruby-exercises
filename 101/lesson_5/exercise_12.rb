arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

new_hash = {}
arr.each do |element|
  new_hash[element.first] = element.last
end

puts new_hash
