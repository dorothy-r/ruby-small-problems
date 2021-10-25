=begin
In the previous exercise, you developed a method that converts non-negative
numbers to strings. In this exercise, you're going to extend that method by
adding the ability to represent negative numbers as well.
Write a method that takes an integer and converts it to a string representation.
You may not use any of the standard conversion methods available in Ruby, such
as `Integer#to_s`, `String()`, `Kernel#format`, etc. You may, however, use
`integer_to_string` from the previous exercise.

# Problem
Input: integer
Output: a string with the same digits & sign
Similar to the previous exercise, but this time include negative numbers

# Examples
signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'

# Data Structures
Input: integer
Output: string
Use an array to store the conversions

# Algorithm
Determine whether the input number is positive or negative
If positive, add a '+' to the beginning of the string
If negative, add a '-' to the beginning of the string
If 0, add nothing
(Use the previous method)

=end

# My solution
DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(number)
  digits = []
  loop do
    number, modulus = number.divmod(10)
    digits.unshift(DIGITS[modulus])
    break if number == 0
  end
  digits.join
end

def signed_integer_to_string(number)
  if number > 0
    '+' + integer_to_string(number)
  elsif number < 0
    '-' + integer_to_string(-number)
  else
    integer_to_string(number)
  end
end

# LS solution
def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'