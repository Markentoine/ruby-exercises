# Write a method that takes two Array arguments

# in which each Array contains a list of numbers,

# and returns a new Array that contains the product of every
# pair of numbers that can be formed between the elements of
# the two Arrays. The results should be sorted by increasing
# value.

# You may assume that neither argument is an empty Array.

# 1 understand the problem
# => combine all elements in two non-empty arrays of different length
# into a new array
# => sort elements in new array in increasing order

# 2 multiply_all_pairs([2, 4], [4, 3, 1, 2])

# Inputs:
# => arr_1
# => arr_2

# Outputs combined
#data structure: Array

# describe algorithm

#START
#LOOP
# for each num_1 element in arr_1
  # num_1 *
  # for each num_2 element in arr_2
    # * num_2
#END LOOP
# sort combined
#STOP

def multiply_all_pairs(arr_1, arr_2)
  combined = []
  arr_1.each do |num_1|
    arr_2.each do |num_2|
      combined << num_1 * num_2
    end
  end
  print combined.sort
end

multiply_all_pairs([2, 4], [4, 3, 1, 2])
