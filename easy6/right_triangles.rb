=begin
Write a method that takes a positive integer, `n`, as an argument, and displays
a right triangle whose sides each have `n` stars. The hypotenuse of the
triangle (the diagonal side in the images below) should have one end at the
lower-left of the triangle, and the other end at the upper-right.

# Problem:
Input: a positive integer
Output: strings printed to the screen
Display a triangle of `n` rows.
The top row should have 1 start at the right side.
Each subsequent row should have one additional star, going toward the left,
until the botton row has `n` stars.

# Examples:
triangle(5)

    *
   **
  ***
 ****
*****

triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********

# Data Structures:
Input: integer
Output: strings

# Algorithm
Set stars to 1
Set spaces to n-1
Loop over the range from 1 to `n`:
  print spaces, then stars
  increment stars, decrement spaces

=end

# My solution:
def triangle(number)
  (1..number).each do |num|
    puts "#{' ' * (number - num)} #{'*' * num}"
  end
end

# LS solution:
def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

triangle(5)
triangle(9)