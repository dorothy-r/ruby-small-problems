# Print all odd numbers from 1 to 99, inclusive, to the console, with each
# number on a separate line
#
# Problem:
# Input: none
# Output: all odd numbers from 1 to 99 (each on its own line)
#
# Example: na
#
# Data Structures:
# Iterating over a range could be a good approach?
#
# Algorithm:
# Iterate over the range 1-99
# Test whether a number is odd
# If it is, print it to the screen on its own line

(1..99).each { |i| puts i if i.odd? }
  
# Further Exploration: Try doing this using a different technique

1.upto(99) {|num| puts num if num.odd?}

puts (1..99).to_a.select { |num| num.odd? }