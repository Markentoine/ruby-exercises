# leap year: year divisible by 100, unless also divisible by 100
# if evenly divisible by 100, then ly if divisible by 400

# In the modern era under the Gregorian Calendar, leap years occur in
# every year that is evenly divisible by 4, unless the year is also
# divisible by 100. If the year is evenly divisible by 100, then it is not a
# leap year unless the year is evenly divisible by 400.

# The British Empire adopted the Gregorian Calendar in 1752, which was a leap year.
# Prior to 1752, the Julian Calendar was used. Under the Julian Calendar, leap years
# occur in any year that is evenly divisble by 4.

def leap_year(year)
  if year < 1
    puts "You'll need to supply me with a integer > 0"
    exit
  end

  case year >= 1752
  when year % 4 != 0 then false
  when year % 100 != 0 then true
  when year % 400 == 0 then true
  else
    false
  end

  case year < 1752
  when year % 4 == 0 then true
  else
    false
  end
end
