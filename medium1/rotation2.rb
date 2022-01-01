=begin
# Problem:
Write a method that can rotate the last n digits of a number.
Note that rotating just 1 digit results in the original number being returned.
You may use the `rotate_array` method from the previous exercise.
You may assume that `n` is always a ositive integer.
Input: two integers (the second shows the number of digits to rotate)
Output: an integer

# Examples:
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

# Data Structures:
Input: 2 integers
Output: 1 integer
Converting the digits of the integer into an array will be helpful

# Algorithm:
Convert the 1st integer into an array of digits.
Take a slice of the 2nd integer size of the array.
Rotate that slice, and join it to the non-rotated digits.
Convert the array back into an integer
=end

# My solution
def rotate_array(array)
  array[1..-1] << array[0]
end

def rotate_rightmost_digits(number, n)
  rotating_digits = number.digits.slice(0, n).reverse
  same_digits = number.digits.slice(n..-1).reverse
  (same_digits + rotate_array(rotating_digits)).join.to_i
end

# LS solution
def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end



puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917