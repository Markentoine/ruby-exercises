munsters_description = "The Munsters are creepy in a good way."

#p munsters_description.capitalize!

def ver1(input)
  x= input.split
  x.each do |c|
    c.capitalize!
    c.swapcase!
  end
  p x.join(" ")
end

ver1(munsters_description)
p munsters_description.downcase!
p munsters_description.upcase!
