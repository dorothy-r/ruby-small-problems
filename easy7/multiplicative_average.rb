=begin
Write a method that takes an Array of integers as input, multiplies all the
numbers together, divides the result by the number of entries in the Array, and
then prints the result rounded to 3 decimal places. Assume the array is
non-empty.

# Problem:
Input: an array of integers
Output: a floating point number in a string
Multiply the numbers in the array, divide by the number of numbers, and round
the result to 3 decimal places.
The array will not be empty.
Print the result in a string, "The result is [result]"

# Examples:
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

# Data Structures:
Input: array
Output: string (showing float result)
Should not need another structure as an intermediate step

# Algorithm:
Iterate through the array, multiplying the numbers together and keeping a
running total.
Divide the total by the size of the array.
Round the result to 3 decimal places
Display the result in a string

=end

# My solution
def show_multiplicative_average(array)
  result = format("%.3f", (array.reduce(:*) / array.size.to_f))
  puts "The result is #{result}"
end

# LS solution
def show_multiplicative_average(numbers)
  product = 1.to_f
  numbers.each { |number| product *= number }
  average = product / numbers.size
  puts "The result is #{format('.3f', average)}"
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667