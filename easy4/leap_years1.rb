=begin
In the modern era under the Gregorian Calendar, leap years occur in every year
that is evenly divisible by 4, unless the year is also divisible by 100. If the
year is evenly divisible by 100, then it is not a leap year unless the year is
evenly divisible by 400.
Assume this rule is good for any year greater than year 0. Write a method that
takes any year greater than 0 as input, and returns true if the year is a leap
year, or false if it is not a leap year.

# Problem:
Input: a positive integer
Output: a boolean value
Will need to do some arithmetic and return true/false based on result

# Examples:
leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true

# Data Structures:
No collections needed

# Algorithm
If the year is divisible by 400, return true
If not, and it is divisible by 100, return false
If not, and it is divisible by 4, return true
If not, return false

=end

# My solution
def leap_year?(year)
  year % 400 == 0 || ((year % 100 !=0) && (year % 4 == 0))
end

# LS longer solution
def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
     year % 4 == 0
  end
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true