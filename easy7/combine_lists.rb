=begin
Write a method that combines two Arrays passed in as arguments, and returns a
new Array that contains all elements from both Array arguments, with the
elements taken in alternation.
You may assume that both input Arrays are non-empty, and that they have the
same number of elements.

# Problem:
Input: two arrays
Output: one new array
The new array must contain all of the elements from both inputs, in alternation
The two arrays will have the same number of inputs, and will not be empty

# Example:
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# Data Structures:
Input: two arrays
Output: one array
No other structures needed in between

# Algorithm:
Create a new array
Loop through the numbers from 0 to the last index
  Push the element from the current index in array1 to the new array
  Push the element from the current index in array2 to the new array
Return the new array

=end

# My solution
def interleave(array_1, array_2)
  return_array = []
  index = 0
  while index < array_1.size
    return_array << array_1[index]
    return_array << array_2[index]
    index += 1
  end
  return_array
end

# LS solution
def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element << array2[index]
  end
  result
end

# Solution using `Array#zip`
def interleave(array1, array2)
  array1.zip(array2).flatten
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']