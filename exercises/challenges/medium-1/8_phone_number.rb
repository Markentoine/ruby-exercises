class PhoneNumber
  attr_reader :raw_input

  def initialize(raw_input)
    @raw_input = raw_input
  end

  def number
    clean_num = raw_input.gsub(/\D/, '')
    if raw_input =~ /[a-z]/i
      '0' * 10
    elsif clean_num.size == 10 && clean_num =~ /\d{10}/
      clean_num
    elsif clean_num.size == 11 && clean_num =~ /1\d{10}/
      clean_num[1..11]
    else
      '0' * 10
    end
  end

  def area_code
    number[0..2]
  end

  def to_s
    number.chars
          .insert(0, '(')
          .insert(4, ') ')
          .insert(8, '-')
          .join
  end
end
