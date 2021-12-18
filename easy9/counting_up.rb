=begin
# Problem
Write a method that takes an integer argument, and returns an Array of all
integers, in sequence, between 1 and the argument.
You may assume that the argument will always be a valid integer that is greater
than 0. 
Input: an integer
Output: an inclusive, sequencedarray of all integers between 1 and the input 
integer

# Examples:
sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

# Data Structures:
Input: Integer
Ouput: Array
In between, a range will be helpful

# Algorithm:
Take the input integer.
Create an empty array
Iterate over a range from 1 to the input, and add each number to the array.
Return the array
=end

# My solution
def sequence(number)
  arr = []
  (1..number).each { |num| arr << num }
  arr
end

# LS solution
def sequence(number)
  (1..number).to_a
end

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]