class Integer
  CONVERSION_TABLE =
    {
      1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C',
      90 => 'XC', 50 => 'L', 40 => 'XL', 10 => 'X', 9 => 'IX',
      5 => 'V', 4 => 'IV', 1 => 'I'
    }.freeze

  def to_roman
    roman_numeral = ''
    arabic_numeral = self

    CONVERSION_TABLE.each do |arabic, roman|
      while arabic_numeral >= arabic
        roman_numeral << roman
        arabic_numeral -= arabic
      end
    end
    roman_numeral
  end
end
