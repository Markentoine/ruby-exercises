# In the modern era under the Gregorian Calendar, leap years occur in
# every year that is evenly divisible by 4, unless the year is also
# divisible by 100. If the year is evenly divisible by 100, then it is not a
# leap year unless the year is evenly divisible by 400.

def leap_year(year)
  if year < 1
    puts "You'll need to supply me with a integer > 0"
    exit
  end

  case
  when year % 4 != 0 then false
  when year % 100 != 0 then true
  when year % 400 == then true
  else
    false
  end
end
