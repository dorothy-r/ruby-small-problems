=begin
In the previous two exercises, you developed methods that convert simple
numeric strings to signed Integers. In this exercise and the next, you're
going to reverse those methods.
Write a method that takes a positive integer or zero, and converts it to a
string representation.
You may not use any of the standard conversion methods available in Ruby,
such as `Integer#to_s`, `String()`, `Kernel#format`, etc. Your method should
do this the old-fashioned way and construct the string by analyzing and
manipulating the number.

# Problem:
Input: an integer
Output: a string
Take a positive integer, convert it to a string.
Will need to isolate each digit in the integer, in order to conver each one.

# Examples:
integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

# Data Structures:
nput: an integer
Output: a string
In between, a hash to convert digits would help, and maybe an array to store
the numeric digits to be converted.

# Algorithm:
Get each digit in the number using modulo and division, and powers of 10.
Is there a way to find out the length of an integer?
Or just have a loop dividing the number down until it is 0?
Store the digits in an array.
Convert those digits to strings, then join them into one string.

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

# LS solution
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

puts integer_to_string(4321)
puts integer_to_string(0)
puts integer_to_string(5000)