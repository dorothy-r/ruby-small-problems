=begin
# Problem: Write a method that displays a 4-pointed diamond in an nxn grid,
where `n` is an odd integer that is supplied as an argument to the method. You
may assume that the argument will always be an odd integer.

# Examples:
diamond(1)
*

diamond(3)
 *
***
 *

diamond(9)
    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

# Data Structures:
Input: an integer
Output: nil
        print a diamond shape to the screen
In between, a range could be useful?

# Algorithm:
Take the input integer.
Iterating from 1 to the given integer, print the current number of `*` to the
screen, if the current number is odd.
Then iterate back from the given integer to one.
Either going up or down should not be inclusive, so there will be only one
widest row.
=end

# My Solution
def diamond(grid_size)
  1.upto(grid_size - 2) { |num| puts "#{('*' * num).center(grid_size)}" if num.odd? }
  grid_size.downto(1) { |num| puts "#{('*' * num).center(grid_size)}" if num.odd? }
end

# LS Solution
def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance)}
end

diamond(9)
diamond(3)
diamond(1)