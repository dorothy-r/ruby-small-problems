=begin
# Problem:
Write a method that takes a number as an argument. If the argument is a
positive number, return the negative of that number. If the number is 0 or
negative, return the original number.
Input: an integer
Output: an integer

# Examples:
negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby

# Data Structure:
Input: integer
Output: integer

# Algorithm:
If the number is > 0, return its negative.
Otherwise, return the number
=end

def negative(num)
  num > 0 ? -num : num
end

puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0      # There's no such thing as -0 in ruby