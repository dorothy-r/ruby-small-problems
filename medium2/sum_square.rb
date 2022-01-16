=begin
# Problem:
Write a method that computes the difference between the square of the sum of
the first `n` positive integers and the sum of the squares of the first `n`
positive integers.

# Examples:
sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

# Data Structures:
Input: Integer
Output: Integer
Will need to iterate over the numbers from 1 to `n`, so maybe a range?

# Algorithm:
Get the square of the sum of the first `n` numbers:
Add up all of the numbers from 1 to `n`, inclusive. Then square that number.
Get the sum of the squares of the first `n` numbers:
Iterate over the numbers fro 1 to `n`, inclusive, and square each number.
Then add up the total of all of the squares.
=end

# My solution
def sum_square_difference(num)
  square_sums = ((1..num).reduce(:+))**2
  sum_squares = (1..num).map { |n| n**2 }.reduce(:+)
  square_sums - sum_squares
end

# LS solution
def sum_square_difference(num)
  sum = 0
  sum_of_squares = 0

  1.upto(n) do |value|
    sum += value
    sum_of_square += value**2
  end

  sum**2 - sum_of_squares
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150