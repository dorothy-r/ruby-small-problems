=begin
# Problem:
Write a method that rotates an array by moving the first element to the end of
the array. The original array should not be modified.
Do not use the method Array#rotate for your implementation.
Input: array
Output: a NEW array, with the first element of the input array at the end

# Examples:
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

# Data Structures:
Input: array
Output: array
The output array should be a new array. The original array should not be modified

# Algorithm:
Take the first element of the array (non-destructively).
Take all of the other elements (non-destructively), and append the first element
=end

def rotate_array(array)
  array[1..-1] << array[0]
end

puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
puts rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
puts rotate_array(x) == [2, 3, 4, 1]   # => true
puts x == [1, 2, 3, 4]                 # => true