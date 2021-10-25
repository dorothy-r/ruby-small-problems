=begin
Write a method that searches for all multiples of 3 or 5 that lie between 1 and
some other number, and then computes the sum of those multiples. For instance,
if the supplied number is 20, the result should be 98(3 + 5 + 6 + 9 + 10 + 12 +
15 + 18 + 20).ARGFYou may assume that the number passed in is an integer
greater than 1. 

# Problem:
Input: an integer greater than 1
Output: an integer
Find all multiples of 3 or 5 and add them together

# Examples:
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

# Data Structures
Input and Output: an integer
An array could be useful in intermediate steps for storing all of the multiples

# Algorithm:
Iterate over the numbers between 1 and the input number
Check whether each number is divisible by 3 or 5
If so, add it to an array
Sum all of the numbers in the array and return that value

=end

# My solution
def multisum(number)
  multi_array = []
  (1..number).each do |num|
    if num % 3 == 0 || num % 5 == 0
      multi_array << num
    end
  end
  multi_array.sum
end

# LS solution
def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max_value)
  sum = 0
  1.upto(max_value) do |number|
    if multiple?(number, 3) || multiple?(number, 5)
      sum += number
    end
  end
  sum
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168