=begin
# Problem:
If you take a number like 735291, and rotate it to the left, you get 352917. If
you now keep the first digit fixed in place, and rotate the remaining digits,
you get 329175. Keep the first 2 digits fixed in place and rotate again to 
321759. Keep the first 3 digits fixed in place and rotate the final 2 digits to
get 321579. Keep the first 4 digits fixed in place and rotate the final 2
digits to get 321579. The resulting number is called the maximum rotation of
the original number.
Write a method that takes an integer as argument, and returns the maximum
rotation of that argument. You can (and probably should) use the method from
the previous exercise.
Note that you do not have to handle multiple 0s.

# Examples:
max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845

# Data Structures:
Input: integer
Output: integer
Will need to convert the integer to an array of digits.

# Algorithm:
Create a new array for the results.
Loop:
  Use the `rotate_rightmost_digit` method.
  Add the first digit to the results array.
  Then do the method on the remaining digits (joined as a number)
Join the array and convert it to an integer
=end

def rotate_array(array)
  array[1..-1] << array[0]
end

def rotate_rightmost_digits(number, n)
  rotating_digits = number.digits.slice(0, n).reverse
  same_digits = number.digits.slice(n..-1).reverse
  (same_digits + rotate_array(rotating_digits)).join.to_i
end


def max_rotation(number)
  num_digits = number.digits.length
  loop do
    number = rotate_rightmost_digits(number, num_digits)
    num_digits -= 1
    break if num_digits == 0
  end
  number
end

# LS Solution
def max_rotation(number)
  number_digits = number.to_s.size
  number_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) #== 7_321_609_845