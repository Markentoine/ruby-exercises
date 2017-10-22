class PerfectNumber
  def self.classify(number)
    raise RuntimeError if number < 0
    @natural_number = number
    if sum_of_factors < @natural_number
      'deficient'
    elsif sum_of_factors > @natural_number
      'abundant'
    elsif sum_of_factors == @natural_number
      'perfect'
    end
  end

  def self.sum_of_factors
    (1...@natural_number).reduce(0) do |sum, number|
      (@natural_number % number).zero? ? sum + number : sum
    end
  end
end
