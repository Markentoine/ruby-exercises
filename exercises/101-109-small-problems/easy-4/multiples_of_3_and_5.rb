# Write a method that searches for all multiples of 3 and 5 that lie
# between 1 and some other number, and then computes the sum of those
# multiples. For instance, if the supplied number is 20, then the result
# should be 90 (3+5+6+9+10+12+15+18+20)

def multisum(int)
  arr = (1..int).select {|num| num % 3 == 0 || num % 5 == 0}
  arr.reduce(:+)
end
