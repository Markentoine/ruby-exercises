# Write a method that counts the number of occurences of
# each element in a given array.

# 1 understand the problem
  # -what about empty input array?
  # -store count in separate array
# 2 set up test cases
# => count_occurrences(vehicles)
# => count_occurrences([])

def count_occurrences(arr_with_items)
  counts = Hash.new(0)

  arr_with_items.each { | index | counts[index] += 1 }
  counts.each { | key, value | puts "#{key} => #{value}"}
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)
