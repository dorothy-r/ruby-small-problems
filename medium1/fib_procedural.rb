=begin
# Problem:
The recursive solution in the previous exercise is not practical for higher
values of n (even the tail recursive solution fails around 8200).
Rewrite the `fibonacci` method so that it computes its results without recursion.

# Examples:
fibonacci(20) == 6765
fibonacci(100) == 354224848179261915075
fibonacci(100_001) # => 4202692702.....8285979669707537501

# Data Structures:
Input: integer
Output: integer

# Algorithm:
Start with two numbers set to 0 and 1.
Add the two numbers together.
Move 1 to the zero number, and the sum to the 1 number.
Continue doing this for n iterations (where n is the input integer)
Return the last sum
=end

# My solution
def fibonacci(n)
  num1 = 0
  num2 = 1
  (n-1).times do 
    num1, num2 = num2, (num1 + num2)
  end
  num2
end

# LS solution
def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end

puts fibonacci(20) == 6765
puts fibonacci(100) == 354224848179261915075
puts fibonacci(100_001) # => 4202692702.....8285979669707537501