class Trinary
  BASE = 3

  def initialize(value)
    unless value.instance_of? String
      raise ArgumentError, 'value must be String representation of a decimal
        number'
    end
    @value = value
  end

  def to_decimal
    return 0 if value =~ /[^012]/
    value.chars.reverse.map.with_index do |char, index|
      char.to_i * BASE**index
    end.reduce(:+)
  end

  private

  attr_reader :value
end
