# Write a method that takes two arguments, a positive integer and a boolean,
# and calculates the bonus for a given salary. If the boolean is `true`, the
# bonus should be half of the salary. If the boolean is `false`, the bonus
# should be 0.

# Problem:
# Input: a positive integer and a boolean
# Output: either a positive integer or 0
# The method outputs half of the given integer if the boolean is true,
# and 0 if the boolean is false.

# Examples:
# Input: 2800, true  Output: 1400
# Input: 1000, false  Output: 0
# Input: 50000, true  Output: 25000

# Data Structures:
# none

# Algorithm
# Take integer and boolean. 
# If boolean is true, return integer / 2
# Otherwise, return 0

def calculate_bonus(salary, bonus)
  bonus ? salary / 2 : 0
end

puts calculate_bonus(2800, true)
puts calculate_bonus(1000, false)
puts calculate_bonus(50000, true)