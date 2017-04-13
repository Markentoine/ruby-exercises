# Write a method that takes a year as input and returns the century.
# The return value should be a string that begins with the century
# number, and ends with st, nd, rd, or th as appropriate for that
# number.

# New centuries begin in years that end with 01. So the years 1901-2000
# comprise the 20th century.

def century(year)
  century_number = (year) / 100 + 1
  century_number -= 1 if year % 100 == 0
  print_century(century_number)
end

def print_century(century_number)
  if century_number % 10 == 1
    suffix = 'st'
  elsif century_number % 10 == 2
    suffix = 'nd'
  elsif century_number % 10 == 3
    suffix = 'rd'
  elsif century_number % 10 == 11 || 12 || 13
    suffix = 'th'
  else
    suffix = 'th'
  end

  puts century_number.to_s +  suffix
end
