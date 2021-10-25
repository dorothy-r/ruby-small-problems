=begin
Write a method that takes a year as input and returns the century. The return
value should be a string that begins with the century number and ends with 'st', 
'nd', 'rd', or 'th' as appropriate for that number.
New centuries begin in years that end with '01'. So the years 1901-2000 comprise
the 20th century.

# Problem:
Input: an integer (the year)
Output: a string
First need to get from the year to the century.
Then convert that into a string and add the appropriate ending.

# Examples:
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

# Data Structures:
Input: an integer
Output: a string
May need to convert the integer to a float to get the century

# Algorithm
Convert the integer to a float.
Divide it by 100 and round up to get the century.
Let the ending digit of the century determine the string ending.
Concatenate the century (convert to string) and the ending

=end

# My solution
def century(year)
  century = (year / 100.0).ceil.to_s

  return century + 'th' if century[-2] == '1'

  case century[-1]
  when '1'
    century += 'st'
  when '2'
    century += 'nd'
  when '3'
    century += 'rd'
  else
    century += 'th'
  end
end

# LS Solution
def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'