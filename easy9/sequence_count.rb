=begin
# Problem
Create a method that takes two integers as arguments. The first argument is a
count, and the second is the first number of a sequence that your method will
create. The method should return an Array that contains the same number of
elements as the count argument, while the values of each element will be
multiples of the starting number.
You may assume that the count argument will always have a value of 0 or greater,
while the starting number can be any integer value. If the count is 0, an
empty list should be returned.

# Examples:
sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []

# Data Structures
Input: two integers
Output: an array

# Algorithm
The first argument is the count. The second is the first number of a sequenc.
Create an array.
Count up to the count number, multiplying the first number given by the
current counter value on each iteration. 
Push each number to the new array.
=end

# My solution
def sequence(count, num)
  results = []
  1.upto(count) { |value| results << value * num }
  results
end

# LS solution 1
def sequence(count, first)
  sequence = []
  number = first

  count.times do
    sequence << number
    number += first
  end

  sequence
end

# LS solution 2
def sequence(count, first)
  (1..count).map { |value| value * first }
end

puts sequence(5, 1) == [1, 2, 3, 4, 5]
puts sequence(4, -7) == [-7, -14, -21, -28]
puts sequence(3, 0) == [0, 0, 0]
puts sequence(0, 1000000) == []