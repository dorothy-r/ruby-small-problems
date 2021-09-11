# Write a method that takes one argument, a positive integer, and returns a 
# list of the digits in the number.

# Problem:
# Input: one positive integer
# Output: an array where each digit of the integer is an element.
#         The order should be the same as the integer from L to R.
# Separate an integer into digits, and add each digit to an array.

# Examples:
# Input: 12345  Output: [1, 2, 3, 4, 5]
# Input: 7, Output: [7]
# Input: 375290, Output: [3, 7, 5, 2, 9, 0]
# Input: 444, Output: [4, 4, 4]

# Data Structures:
# Method should prpulate and return an array, containing the digits in the integer

# Algorithm:
# While the integer > 0, get the last digit (use modulo)
# Add this to the front of the array
# Use integer division to remove the last digit

# First idea
def digit_list(int)
  digits = []
  while int > 0
    digits.unshift(int % 10)
    int /= 10
  end
  digits
end

# Using divmod
def digit_list(int)
  digits = []
  while int > 0
    int, remainder = int.divmod(10)
    digits.unshift(remainder)
  end
  digits
end

# LS 'Idiomatic Ruby' solution
def digit_list(number)
  number.to_s.chars.map(&:to_i)
  # (&:to_i) is short hand for { |char| char.to_i }
end


puts digit_list(12345) == [1, 2, 3, 4, 5]
puts digit_list(7) == [7]
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]