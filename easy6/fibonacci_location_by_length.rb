=begin
The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...)
such that the first 2 numbers are 1 by definition, and each subsequent number
is the sum of the two previous numbers. This series appears throughout the
natural world.
Computationally, the Fibonacci series is a very simple series, but the results
grow at an incredibly rapid rate. For example, the 100th Fibonacci number is
354,224,848,179,261,915,075 -- that's enormous, especially considering that it
takes 6 iterations before it generates the first 2 digit number.
Write a method that calculates and returns the index of the first Fibonacci
number that has the number of digits specified as an argument. (The first
Fibonacci number has index 1.)
You may assume that the argument is always greater than or equal to 2.

# Problem:
Input: Integer representing the number of digits in a Fibonacci number
Output: Integer representing the position of the first Fibonacci number with
the specified number of digits.
Input will always be 2 or greater.
Will need to calculate the series up to the correct digit length.

Examples:
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

# Data Structures:
Input: integer
Output: integer
I don't think any collections are necessary. Should be just math.

# Algorithm:
We start with the number length.
We want to iterate over the series until we get to a number whose length is
equal to the input.
  How to determine number length? Divide by multiples of 10
  If input == n, Fib number / (10 ** (n-1)) should be > 0 and < 10.
  This is too slow! Can determine the number of digits via other methods.
How to go through the series?
Start with 1 and 1 (Index positions 1 and 2).
Adding those together gets to 2 (index position 3).
Can keep adding the previous number to the current one, as well as incrementing
the index number.
Check the length of the number each time (helper method?)
Once we reach a number of the desired length, return the index.

=end

# My solution
# def find_fibonacci_index_by_length(length)
#   first_num = 1
#   second_num = 1
#   index = 2
#   loop do
#     fib_num = first_num + second_num
#     index += 1
#     break(index) if length == fib_num.digits.size # Using `digits` makes this really slow!
#     first_num, second_num = second_num, fib_num
#   end
#   index
# end

# LS solution
# def find_fibonacci_index_by_length(number_digits)
#   first = 1
#   second = 1
#   index = 2

#   loop do
#     index += 1
#     fibonacci = first + second
#     break if fibonacci.to_s.size >= number_digits

#     first = second
#     second = fibonacci
#   end

#   index
# end

# A student-submitted solution
def find_fibonacci_index_by_length(num)
  answer = [1, 1]
  until answer.last.to_s.size == num
    answer.push(answer.last(2).sum)
  end
  answer.size
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847