=begin
Write a method that takes an Array of numbers, and returns an Array with the
same number of elements, and each element has the running total from the
original Array.

# Problem:
Input: an array of numbers
Output: an array of numbers
The new array should have the same number of elements as the original.
An array with one item returns an array with the same item.
An empty array returns an empty array.
All other arrays return an array where each element has the running total from
the original array.

# Examples:
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

# Data Structures:
Input: an array of numbers
Output: an array of numbers
I don't think there's a need for an intermediate data structure

# Algorithm
Create a new array.
If the original array is not empty, assign its first element to the new array.
For each additional element in the original array, add it to the previous
element in the new array.
Return the new array.

=end

# My solution
def running_total(array)
  new_array = []
  new_array << array[0] unless array.empty?

  array.each_with_index do |elem, index|
    new_array << elem + new_array[index - 1] if index > 0
  end
  new_array
end

# LS Solution
def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []