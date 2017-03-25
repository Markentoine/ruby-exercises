my_arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
my_arr.map do |hsh_obj|
  incremented_hash = {}
  hsh_obj.each_pair { |key, value| incremented_hash[key] =  value += 1 } 
  incremented_hash
end 
