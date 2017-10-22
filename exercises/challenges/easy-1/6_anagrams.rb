class Anagram
  def initialize(word)
    @word = word
  end

  def match(candidate_anagrams)
    anagrams = @word.chars.permutation.to_a.map(&:join)
    anagrams.delete(@word)

    result = candidate_anagrams.select do |candidate|
      anagrams.any? { |anagram| /\b#{anagram}\b/i =~ candidate }
    end
    result
  end
end
