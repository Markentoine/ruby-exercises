class Octal
  BASE = 8

  def initialize(value)
    Raise ArgumentError, 'Value must be a octal input string' unless
  value.instance_of? String
    @value = value
  end

  def to_decimal
    return 0 if /(\D|[89])/ =~ value
    value
      .chars
      .map(&:to_i)
      .reverse
      .map
      .with_index { |digit, index| digit * 8**index }
      .reduce(:+)
  end

  private

  attr_reader :value
end
