class SumOfMultiples
  DEFAULT_MULTIPLES = [3, 5].freeze
  def self.to(limit)
    SumOfMultiples.new(3, 5).to(limit)
  end

  def initialize(*multiples)
    @multiples = if multiples.empty?
                   DEFAULT_MULTIPLES
                 else
                   multiples.sort
                 end
  end

  def to(limit)
    result = []
    multiples.each do |multiple|
      (multiple..(limit - 1))
        .to_a
        .each { |number| result << number if (number % multiple).zero? }
    end

    result.empty? ? 0 : result.uniq.reduce(:+)
  end

  private

  attr_reader :multiples
end
