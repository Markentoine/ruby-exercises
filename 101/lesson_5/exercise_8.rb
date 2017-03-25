hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
vowels = 'aeiou'

hsh.each do |_, element|
  element.each do |str|
    str.chars.each do |letter|
        puts letter if vowels.include?(letter)
    end
  end
end
