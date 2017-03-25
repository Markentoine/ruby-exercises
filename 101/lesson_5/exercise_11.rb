arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map do |element|
  element.select do |integer_element|
    integer_element % 3 == 0
  end 
end
