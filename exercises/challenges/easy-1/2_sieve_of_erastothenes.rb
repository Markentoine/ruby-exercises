require 'pry'
class Sieve
  def initialize(upper_limit)
    raise ArgumentError, 'Upper limit must be 2 or higher.' if upper_limit < 2
    @number_range = (2..upper_limit).to_a
  end

  def primes
    number_range.each do |prime|
      number_range.reject! do |number|
        number != prime && (number % prime).zero?
      end
    end
    number_range
  end

  private

  attr_reader :number_range
end
