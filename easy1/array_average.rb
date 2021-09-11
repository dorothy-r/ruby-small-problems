# Write a method that takes one argument, an array containing integers, and
# returns the average of all numbers in the array. The array will never be 
# empty and the numbers will always be positive integers. Your result should
# be an integer.

# Problem:
# Input: an array of positive integers (will never be empty)
# Output: an integer
# The method takes an array of integers, adds them up and divides by the number
# of numbers, using integer division. Then returns the result

# Examples:
# Input: [1, 6]  Output: 3
# Input: [1, 5, 87, 45, 8, 8]  Output: 25
# Input [9, 47, 23, 95, 16, 52]  Output: 40

# Data Structure:
# Starts with an array

# Algorithm:
# Take an array of integers. Get the sum of all elements.
# Use integer division to divide the sum by the length of the array.
# Return this result.

# My Solution
def average(array)
  array.sum / array.length
end

# LS Solution
def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number}
  sum / numbers.count
end

puts average([1, 6])
puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])