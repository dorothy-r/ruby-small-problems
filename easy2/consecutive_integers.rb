# Write a program that asks the user to enter an integer greater than 0, then
# asks if the user wants to determine the sum or product of all numbers between
# 1 and the entered integer.
#
# Problem:
# Input: a positive integer, and 's' or 'p' to choose the operation
# Output: either the sum or product of all number between 1 and the user input
#
# Examples:
# Input: 5, 's'  Output: 15
# Input: 6, 'p'  Output: 720
# 
# Data Structures:
# No collections. Use recursion?
# 
# Algorithm:
# Get integer from user
# Get operation from user
# Add or multiply all numbers from 1 to the user's input
# Display results

def consecutive_sum(num)
  x = 0
  num.downto(1) { |i| x += i }
  x
end

def consecutive_product(num)
  x = 1
  num.downto(1) { |i| x *= i }
  x
end

integer = ''
operation = ''

loop do
  puts "Please enter an integer greater than 0:"
  integer = gets.chomp
  break if integer.to_i.to_s == integer && integer.to_i > 0
  puts "Whoops, try again!"
end

loop do
  puts "Enter 's' to comput the sum, 'p' to compute the product."
  operation = gets.chomp.downcase
  break if operation == 's' || operation == 'p'
  puts "Whoops, try again!"
end

if operation == 's'
  sum = consecutive_sum(integer.to_i)
  puts "The sum of the integers between 1 and #{integer} is #{sum}"
elsif operation == 'p'
  product =  consecutive_product(integer.to_i)
  puts "The product of the integers between 1 and #{integer} is #{product}."
else
  puts "Something went wrong..."
end

# Further Exploration: A more Rubyish way of computing sums and products is
# with the Enumerable#inject method. Read the documentation for #inject and
# try to use it in a solution to this problem. Aliased as #reduce

def calculate_sum(num)
  (1..num).inject(:+)
end

def calculate_product(num)
  (1..num).reduce(:*)
end

if operation == 's'
  sum = calculate_sum(integer.to_i)
  puts "The sum of the integers between 1 and #{integer} is #{sum}"
elsif operation == 'p'
  product =  calculate_product(integer.to_i)
  puts "The product of the integers between 1 and #{integer} is #{product}."
else
  puts "Something went wrong..."
end
