=begin
# Problem:
Write a recursive method that computes the nth Fibonacci number, where n is an
argument to the method.
In the Fibonacci series, each number is the sum of the two previous numbers.
F(n) = F(n - 1) + F(n - 2) where n > 2
Input: an integer, representing which of the series to return
Output: an integer, the number at the specified position

# Examples:
fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765

# Data Structures:
Input: integer
Output: integer
none needed in between

# Algorithm:
Return 1 if the input is 1 or 2
Otherwise, return the sum of the method called on n - 2 and on n - 1

=end

def fibonacci(n)
  return 1 if n == 1 || n == 2
  fibonacci(n - 1) + fibonacci(n - 2)
end

# Tail recursive solution - much faster!
def fibonacci_tail(nth, acc1, acc2)
  if nth == 1
    acc1
  elsif nth == 2
    acc2
  else
    fibonacci_tail(nth - 1, acc2, acc2 + acc1)
  end
end

def fibonacci(nth)
  fibonacci_tail(nth, 1, 1)
end

puts fibonacci(1)
puts fibonacci(2)
puts fibonacci(3)
puts fibonacci(4)
puts fibonacci(5)
puts fibonacci(12)
puts fibonacci(20)
