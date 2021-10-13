=begin
Write a method that returns an Array that contains every other element of an
Array that is passed in as an argument. The values in the returned list should
be those values that are in the 1st, 3rd, 5th, and so on elements of the
argument Array.

# Problem:
Input: an array
Output: an array containing the values in the "odd" positions of the orig array
An empty array should return an empty array.
The actual values in the array don't matter.


# Examples:
oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) = []

# Data Structures:
Input: array
Output: array
-anything in between? Just the array that will eventually become the outcome

# Algorithm:
Take an array as input
Create a new array
Iterate through the original array and add the 1st, 3rd, 5th etc to the new one
Check the index number, if even, add it to the new array
Or transform the array in place by deleting the items with odd indices
Return the new array
=end

def oddities(arr)
  new_arr = []
  arr.each_with_index do |item, index|
    new_arr.push(item) if index.even?
  end
  new_arr
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []

# LS Solution
def oddities(array)
  odd_elements = []
  index = 0
  while index < array.size
    odd_elements << array[index]
    index += 2
  end
  odd_elements
end