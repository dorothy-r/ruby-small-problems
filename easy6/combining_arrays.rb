=begin
Write a method that takes two Arrays as arguments, and returns an Array that
contains all of the values from the argument Arrays. There should be no
duplication of values in the returned Array, even if there are duplicates in
the original Arrays.

# Problem: 
Input: two arrays
Output: one array with all of the unique values from the original arrays
Explicit rules:
The returned array should contain all of the values from the input, with no
duplicates.
Implicit rules:
Should return a new array object.

# Example:
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# Data Structures:
Input: two arrays
Output: one array
No intermediate structure needed.

# Algorithm:
Create a new array.
Iterate through the first input array, and add elements to the new array.
Iterate through the second array, and add elements to the new array only if
they are not duplicates.
Return the new array.

=end

# My solution
def merge(arr1, arr2)
  (arr1 + arr2).uniq
end

# LS solution
def merge(array_1, array_2)
  array_1 | array_2
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
