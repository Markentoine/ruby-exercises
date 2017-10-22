
class Luhn
  def self.create(partial_number)
    10.times do |digit|
      number = [partial_number, digit].map(&:to_s).join.to_i
      return number if Luhn.new(number).valid?
    end

    nil
  end

  def initialize(number)
    @number = number
  end

  def addends
    number
      .digits
      .map
      .with_index { |digit, index| index.odd? ? digit * 2 : digit }
      .map { |digit| digit > 9 ? digit - 9 : digit }
      .reverse
  end

  def valid?
    (checksum % 10).zero?
  end

  def checksum
    addends.reduce(:+)
  end

  private

  attr_reader :number
end
