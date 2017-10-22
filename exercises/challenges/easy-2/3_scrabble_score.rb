LETTER_VALUES = { %w[A E I O U L N R S T] => 1,
                  %w[D G] => 2,
                  %w[B C M P] => 3,
                  %w[F H V W Y] => 4,
                  %w[K] => 5,
                  %w[J X] => 8,
                  %w[Q Z] => 10 }.freeze

class Scrabble
  def initialize(word)
    word ||= ''
    @word = word.strip
  end

  def self.score(word)
    new(word).score
  end

  def score
    word.each_char.reduce(0) do |score, letter|
      key = fetch_score(letter)
      score + LETTER_VALUES[key]
    end
  end

  def fetch_score(letter)
    LETTER_VALUES.keys.select { |key| key.include?(letter.upcase) }.first
  end

  private

  attr_reader :word
end
