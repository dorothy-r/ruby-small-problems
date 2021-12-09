=begin
Write a method that takes an Array of numbers and then returns the sum of the
sums of each leading subsequence for that Array. You may assume that the Array
always contains at least one number.

# Problem
Input: an array
Output: an integer
Take the first element of the array and add to it the sum of the first two
elements, then the first three elements, and so on until you have added the
sum of all of the elements in the array.
The array will always contain at least one number.

# Examples:
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

# Data structures:
Input: array
Output: integer
In between, no other DS is needed.

# Algorithm:
Initialize a sum variable to 0.
Iterate over the array. 
Add the current element to all previous elements.
Add this number to the sum variable.
Return the sum variable.
=end

# My solution
def sum_of_sums(arr)
  sum = 0
  arr.each_index do |index|
    until index < 0
      sum += arr[index]
      index -= 1
    end
  end
  sum
end

# LS solution 1
def sum_of_sums(numbers)
  sum_total = 0
  accumulator = 0

  numbers.each do |num|
    accumulator += num
    sum_total += accumulator
  end

  sum_total
end

# LS solution 2
def sum_of_sums(numbers)
  sum_total = 0
  1.upto(numbers.size) do |count|
    sum_total += numbers.slice(0, count).reduce(:+)
  end
  sum_total
end

puts sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) == 4
puts sum_of_sums([1, 2, 3, 4, 5]) == 35