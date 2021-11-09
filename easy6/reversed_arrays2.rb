=begin
Write a method that takes an Array, and returns a new Array with the elements
of the original list in reverse order. Do not modify the original list.
You may not use `#reverse` or `#reverse!`, nor may you use the method you wrote
in the previous exercise.

# Problem:
Input: an array
Output: a new array, with the elements of the orignal array reversed
Rules: Do not modify the original array.
Do not use built-in reverse methods

# Examples:
reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true

# Data Structures:
Input: array
Output: array
No need for an intermediate structure

# Algorithm
Take the original array
Create a new array
Iterate through the original array:
  Add each element to the front of the new array
Return the new array

=end

# My solution
def reverse(array)
  new_array = []
  array.each { |element| new_array.unshift(element) }
  new_array
end

# LS solution
def reverse(array)
  result_array = []
  array.reverse_each { |element| result_array << element }
  result_array
end

puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse(%w(a b e d c)) == %w(c d e b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []                        # => true

puts list = [1, 3, 2]                      # => [1, 3, 2]
puts new_list = reverse(list)              # => [2, 3, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 3, 2]                     # => true
puts new_list == [2, 3, 1]                 # => true