=begin
Using the `multiply` method from the "Multiplying Two Numbers" problem, write
a method that computes the square of its argument (the square is the result of
multiplying a number by itself).

# Problem:
Input: One argument (numeric?)
Output: One number (or string?)

# Examples:
square(5) == 25
square(-8) == 64

# Data Structures
Integers, floats?

# Algorithm
Method takes an argument, passes it to the multiply method to
multiply it by itself.assert_Qundef
=end

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

puts square(5)
puts square(-8)