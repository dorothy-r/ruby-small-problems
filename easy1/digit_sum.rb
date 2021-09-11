# Write a method that takes one argument, a positive integer, and returns the
# sum of its digits. For a challenge, try it without any basic looping constructs.

# Problem:
# Input: a positive integer
# Output: a positive integer, the sum of the input integer's digits
# The method takes a positive integer and returns the sum mof its digits

# Examples:
# Input: 23  Output: 5
# Input: 496  Output: 19
# Input: 123_456_789  Output: 45

# Data Structure: 
# An array, with one element for each digit could be helpful

# Algorithm:
# Take the intgers. Separate each digit (store in an array)
# Then get the sum of the digits.

# My Solution (Similar to LS Solution 2)
def sum(integer)
  integer.to_s.split('').map(&:to_i).sum
end

# LS Solution 1
def sum(integer)
  sum = 0
  str_digits = number.to_s.chars

  str_digits.each do |str_digit|
    sum += str_digit.to_i
  end
  sum
end

puts sum(23)
puts sum(496)
puts sum(123_456_789)