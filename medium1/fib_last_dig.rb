=begin
# Problem:
In this exercise, write a method that returns the last digit of the nth
Fibonacci number.

# Examples:
fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
fibonacci_last(123456789) # -> 4

# Data Structures:
Input: integer
Output: integer

# Algorithm:
Calculate the nth Fibonacci number.
Convert the number to an array of digits.
Return the digit in the ones position.
=end

def fibonacci(n)
  num1 = 0
  num2 = 1
  (n-1).times do 
    num1, num2 = num2, (num1 + num2)
  end
  num2
end

# My Solution
def fibonacci_last(n)
  fib_num = fibonacci(n)
  fib_num.digits.first
end

# LS Solution 1 (similar)
def fibonacci_last(nth)
  fibonacci(nth).to_s[-1].to_i
end

# LS Solution 2 (better)
def fibonacci_last(nth)
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end

  last_2.last
end

# My Solution along those lines
def fibonacci_last(n)
  last1 = 0
  last2 = 1
  (n - 1).times do
    last1, last2 = last2, ((last1 + last2) % 10)
  end
  last2
end

puts fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
puts fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
puts fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
puts fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
puts fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
puts fibonacci_last(123456789) # -> 4