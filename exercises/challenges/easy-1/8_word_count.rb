
require 'pry'
class Phrase
  def initialize(phrase)
    @words = phrase.scan(/\w+(?:'\w+)*/)
  end

  def word_count
    words.each_with_object(Hash.new(0)) do |word, counts|
      counts[word.downcase] += 1
    end
  end

  private

  attr_reader :words
end
