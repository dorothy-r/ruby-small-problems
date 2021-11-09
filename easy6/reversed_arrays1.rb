=begin
Write a method that takes an Array as an argument, and reverses its elements in
place; that is, mutate the Array passed into this method. The return value
should be the same Array object.
You may not use `#reverse` or `#reverse!`

# Problem
Input: an array
Output: the same array, with its elements reversed
The object id of the result must be the same as the original array.

# Examples:
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true

# Data Structures:
Input: array
Output: SAME array
Don't think an intermediate data structure is necessary. Can transform the
array via index assignment.

# Algorithm:
Find the midpoint of the array.
Until the index reaches the midpoint index:
  Swap the first and last elements
  Continue swapping, working inward, increasing the index of the front element,
  and decreasing the index of the back element.
Return the array.

=end

# My solution
def reverse!(list)
  midpoint = (list.size)/2
  index = 0
  until index == midpoint
    list[index], list[-1 - index] = list[-1 - index], list[index]
    index += 1
  end
  list
end

# LS solution
def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -=1
  end

  array
end

list = [1,2,3,4]
puts result = reverse!(list)
puts result == [4, 3, 2, 1] # true
puts list == [4, 3, 2, 1] # true
puts list.object_id == result.object_id 

list = %w(a b e d c)
puts reverse!(list) == ["c", "d", "e", "b", "a"] # true
puts list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
puts reverse!(list) == ["abc"] # true
puts list == ["abc"] # true

list = []
puts reverse!(list) == [] # true
puts list == [] # true