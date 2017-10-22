
require 'pry'
class SecretHandshake
  LOOKUP_TABLE = {
    '1' => 'wink', '10' => 'double blink',
    '100' => 'close your eyes', '1000' => 'jump'
  }.freeze

  def initialize(number)
    @number = to_base_2_string(number).reverse
  end

  def commands
    result = []
    @number.each_index do |index|
      result << match(index) if direct_match(index)
      add_submatch_and_zero_out(result, index) if submatch_found(index)
    end

    return result.reverse if @number[-1] == '1'
    result
  end

  def to_base_2_string(number)
    number.to_i.to_s(2).chars
  end

  def direct_match(index)
    @number[(index + 1)..-1].all? { |char| char == '0' } &&
      @number.find_index(@number.last) != index
  end

  def submatch_found(index)
    LOOKUP_TABLE.keys.include?(@number[0..index].reverse.join)
  end

  def add_submatch_and_zero_out(result, index)
    result << LOOKUP_TABLE[@number[0..index].reverse.join]
    @number[index] = '0'
  end
end
