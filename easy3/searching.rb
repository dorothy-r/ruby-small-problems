=begin
Write a program that solicits 6 numbers from the user, then prints a message 
that describes whether or not the 6th number appears amongst the first 5.

Problem:
Input: 6 numbers
Output: a message (string) describing whether or not the 6th number appears
amongst the first 5.

Questions: 
Does it matter whether the numbers are integers or floats?
Negative or positive?
Are zeros acceptable input?

Examples:
Input: 23, 15, 20, 17, 23, 17
Output: 'The number 17 appears in [25, 15, 20, 17, 23].'

Input: 25, 15, 20, 17, 23, 18
Output: 'The number 18 does not appear in [25, 15, 20, 17, 23].'

Data Structures:
Input: integers
Output: a string containing an array
- should collect the first 5 numbers in an array

Algorithm:
Ask user to input 5 numbers:
 - ask a question for each number
 - collect these numbers in an array
Ask user to input a 6th number
Check to see if the array includes the 6th number.
Print a message saying whether it does or does not
=end

numbers = []

puts "==> Enter the 1st number:"
numbers << gets.chomp.to_i

puts "==> Enter the 2nd number:"
numbers << gets.chomp.to_i

puts "==> Enter the 3rd number:"
numbers << gets.chomp.to_i

puts "==> Enter the 4th number:"
numbers << gets.chomp.to_i

puts "==> Enter the 5th number:"
numbers << gets.chomp.to_i

puts "==> Enter the last number:"
last_number = gets.chomp.to_i

if numbers.include?(last_number)
  puts "The number #{last_number} appears in #{numbers}."
else
  puts "The number #{last_number} does not appear in #{numbers}."
end