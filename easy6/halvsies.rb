=begin
Write a method that takes an Array as an argument, and returns two Arrays (as
a pair of nested Arrays) that contain the first half and second half of the
original Array, respectively. If the original array contains an odd number of
elements, the middle element should be placed in the first half Array.

# Problem:
Input: an array
Output: a nested array containing two subarrays
Rules: The first subarray should have the elements from the first half of the
original array; the second one should have the elements from the second half.
In the case of an odd number, the middle element should be in the first half.
An empty array returns a nested array with two empty subarrays.

# Examples:
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

# Data Structures:
Input: array
Output: nested array
No intermediate structures needed

# Algorithm
Determine the midpoint of the input array
Create a new array with elements up to and including the middle element
Create another array with the remaining elements
Place those two arrays into another array and return it

=end

# My solution
def halvsies(array)
  midpoint = (array.size / 2.0).ceil
  first_half = array[0...midpoint]
  second_half = array[midpoint..-1]
  [first_half, second_half]
end

# LS solution
def halvsies(array)
  middle = (array.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []] 
puts halvsies([]) == [[], []]