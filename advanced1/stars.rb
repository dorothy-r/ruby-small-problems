=begin
# Problem:
Write a method that displays an 8-pointed star in an `n`x `n` grid, where `n` is
an odd integer that is supplied as an argument to the method. The smallest such
star you need to handle is a 7x7 grid.

# Examples:
star(7)

*  *  *
 * * *
  ***
*******
  ***
 * * *
*  *  *

star(9)

*   *   *
 *  *  *
  * * *
   ***
*********
   ***
  * * *
 *  *  *
*   *   *

# Data Structures:
Input: Integer
Output: Strings printed to the screen

# Algorithm:
Integer divide `n`/2. This is the number of lines above and below the middle.
Make the top half of the star:
  On each line we have 3 `'*'`s and `n - 3` `' '`s.
  Store the (starting no. of spaces / 2) in a variable, space_group
  Loop (n/2) times.
  Print `'*'``, `space_group`, `'*'`, `space_group`, `'*'`, centered in a width of `n`
  Decrement `space_group` by one on each iteration
Make the middle of the star, by printing `n` `'*'`s
Make the bottom half of the star:
  Same as the top, but `space_group` starts at 0
  Instead of decrementing, increment `space_group` on each iteration
=end

# My solution
def star(n)
  half_lines = n / 2
  total_spaces = n - 3
  space_group = total_spaces / 2

  half_lines.times do
    puts "*#{' ' * space_group}*#{' ' * space_group}*".center(n)
    space_group -= 1
  end

  puts '*' * n
  
  space_group = 0
  half_lines.times do
    puts "*#{' ' * space_group}*#{' ' * space_group}*".center(n)
    space_group += 1
  end
end

# LS Solution
def print_row(grid_size, distance_from_center)
  number_of_spaces = distance_from_center - 1
  spaces = ' ' * number_of_spaces
  output = Array.new(3, '*').join(spaces)
  puts output.center(grid_size)
end

def star(grid_size)
  max_distance = (grid_size -1) / 2
  max_distance.downto(1) { |distance| print_row(grid_size, distance) }
  puts '*' * grid_size
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end