=begin
Write a method named `include?` that takes an Array and a search value as
arguments. This method should return true if the search value is in the array,
false if it is not. You may not use the `#include?` method in your solution.

# Problem:
Input: array, search value
Output: boolean
The search value can be of any data type.
Return true if the value is in the array, false otherwise.

# Examples:
include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

# Data Structures:
Input: an array and a value of any other type
Output: boolean
No need for an intermediate data structure

# Algorithm:
Iterate through the array:
  check to see if each element matches the given value
  if so, return true; if not, false

=end

# My solution
def include?(array, value)
  array.each { |elem| return true if elem == value}
  false
end

# LS solution
def include?(array, value)
  !!array.find_index(value)
end

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false