=begin
# Problem
Write a method which takes a grocery list (array) of frits with quantities and
converts it into an array of the correct number of each fruit.
Input: 2-dimensional array (each sub-array has one string and one integer)
Output: array of strings

# Example:
buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

# Data Structures:
Input: nested array
Output: array

# Algorithm:
Iterate over the input array.
For each subarray, copy the string `integer` times.
Flatten the multidimensional array, and return it.
=end

# My solution
def buy_fruit(array)
  result = []
  array.each do |subarray|
    subarray[1].times { result << subarray[0]}
  end
  result
end

# LS solution 2
def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]