# Write a method that takes one argument, a positive integer, and returns
# a string of alternating 1s and 0s, always starting with 1. The length of
# the string should match the given integer.

# Problem:
# Input: a positive integer
# Output: a string of alternating 1s and 0s, that is the length of the integer
# The string should always start with 1.
# A method takes an integer and returns a string of [integer] 1s and 0s

# Examples:
# Input: 6  Output: '101010'
# Input: 9  Output: '101010101'
# Input: 4  Output: '1010'
# Input: 7  Output: '1010101'

# Data Structures:
# none

# Algorithm:
# Take integer. Create an empty string.
# Divide integer by 2. Add '10' to string for each whole num quotient, and
# an extra '1' if there is a remainder.

# My solution
def stringy(integer)
  string = ''
  number, remainder = integer.divmod(2)
  number.times { |x| string += '10' }
  remainder.times { |x| string += '1' }
  string
end

# LS Solution
def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end
  numbers.join
end

puts stringy(6)
puts stringy(9)
puts stringy(4)
puts stringy(7)