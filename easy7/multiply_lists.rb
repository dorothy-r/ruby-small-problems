=begin
Write a method that takes two Array arguments in which each Array contains a
list of numbers, and returns a new Array that contains the product of each pair
of numbers from the arguments that have the same index. You may assume that the
arguments contain the same number of elements.

# Problem:
Input: two arrays of numbers
Output: a new array
The new array should contain the product of each element of the same index in
the arguments.
The two arguments contain the same number of elements.

# Example:
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# Data Structures:
Input: two arrays
Output: one array
Should not need another structure in between

# Algorithm:
Create a new array
Initialize a counter variable at 0
Loop over the arrays:
  Multiply the two elements at the counter variable index position
  Push the product to the new array
  Increment the counter
Return the new array

=end

# My solution and LS solution
def multiply_list(array1, array2)
  result = []
  array1.each_with_index do |num, index|
    result << num * array2[index]
  end
  result
end

# Solution with `Array#zip`
def multiply_list(array1, array2)
  array1.zip(array2).map { |sub_array| sub_array.reduce(:*) }
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]