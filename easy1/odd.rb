# Write a method that takes one integer argument, which mau be positive,
# negative, or zero. This method returns `true` if the number's absolute value
# is odd. You may assume that the argument is a valid integer value.
# Do not use #odd? or #even? in the solution.

# Problem:
# Input: one integer (positive, negative, or zero)
# Output: `true` if absolute value is odd, `false` otherwise
# Assume argument is a valid integer.
# The method takes an integer, determines the absolute value, and determines 
# whether that value is odd. If so, it returns true. If not, false.

# Examples:
# Input: 2, Output: false
# Input: 5, Output: true
# Input: -17, Output: true
# Input: -8, Output: false
# Input: 0, Output: false

# Data structures:
# none

# Algorithm:
# Get absolute value of integer
# If the absolute value modulo 2 is equal to 1, return true.
# Otherwise return false.

def is_odd?(num)
  num % 2 == 1  # Using Numerable#abs is not necessary, since `%` always
                # returns a non-negative result if the number on the right
                # is positive.
end


# Method using `Integer#remainder` instead of `%`
# def is_odd?(num)
#   num.abs.remainder(2) == 1
# end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)
puts is_odd?(7)