=begin
Write a program that prompts the user for two positive integers, and then
prints the results of the following operations on those two numbers: addition,
subtraction, product, quotient, remainder, and power. Do not worry about
validating the input.

# Problem:
Input: two positive integers
Output: 6 strings featuring 6 integers
Need to take the two integers, perform the six operations, and return 6 strings
with the results of the operations.

# Example:
Input: 23, 17
Output: 23 + 17 = 40
        23 - 17 = 6
        23 * 17 = 391
        23 / 17 = 1
        23 % 17 = 6
        23 ** 17 = 141050039560662968926103

# Data Structures:
Integers.
Transformed with arithmetic operations.
Displayed as strings.

# Algorithm
Ask user to input the first number
Ask user to input the second number
Display the results of: adding, subtracting, multiplying, dividing, remainder,
and power.
=end

def prompt(message)
  puts "==> #{message}"
end

prompt('Enter the first number:')
num1 = gets.to_i

prompt('Enter the second number:')
num2 = gets.to_i

prompt("#{num1} + #{num2} = #{num1 + num2}")
prompt("#{num1} - #{num2} = #{num1 - num2}")
prompt("#{num1} * #{num2} = #{num1 * num2}")
prompt("#{num1} / #{num2} = #{num1 / num2}")
prompt("#{num1} % #{num2} = #{num1 % num2}")
prompt("#{num1} ** #{num2} = #{num1 ** num2}")
