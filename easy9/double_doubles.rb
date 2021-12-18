=begin
# Problem:
A double number is a number with an even number of digits whose left-side
digits are exactly the same as its right-side digits. For example, 44, 3333,
103103, 7676 are all double numbers. 444, 334433, and 107 are not.
Write a method that returns 2 times the number provided as an argument, unless
the argument is a double number; double numbers should be returned as-is.
Input: an integer
Output: an integer -- either the input * 2, or the input as-is (if it is a
double number). 

# Examples:
twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10

# Data Structures:
Input: integer
Output: integer
Converting the input integer to a string or array? will be helpful.

# Algorithm
If the input integer has an odd number of digits, multiply it by 2.
If not, determine whether the first half of the digits are exactly the same and 
in the same order as the second half.
If not, multiply it by 2. 
If so, return the original number
=end

# My Solution
def twice(num)
  num_length = num.digits.size
  if num_length.even?
    half_length = num_length/2
    if num.digits[0, half_length] == num.digits[half_length, half_length]
      return num
    end
  end
  num * 2
end

# LS Solution
def twice(number)
  string_number = number.to_s
  center = string_number.size / 2
  left_side = center.zero? ? '' : string_number[0..center - 1]
  right_side = string_number[center..-1]

  return number if left_side == right_side
  return number * 2
end

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10