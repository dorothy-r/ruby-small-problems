=begin
# Problem
Write a method that takes two arguments: the first is the starting number, and
the second is the ending number. Print out all numbers between two numbers,
except if a number is divisible by 3, print "Fizz", if a number is divisible by
5, print "Buzz", and finally if a number is divisible by 3 and 5, print 
"FizzBuzz".
Input: two integers
Output: print lines to the screen, as described above

# Example:
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

# Data Structures:
Input: 2 integers
Output: a string printed to the screen
Use a range of numbers to iterate over

# Algorithm:
Create an array for the results
Iterate over the range of numbers from the provided starting and ending numbers.
Check if the number is divisible by 3 and 5: if so, append "FizzBuzz"
Check if the number is divisible by 5 (and not 3): if so, append "Buzz"
Check if the number is divisible by 3 (and not 5): if so, append "Fizz"
Otherwise, append the number.
Join the array together and print it

=end

# My solution
def fizzbuzz(starting, ending)
  results = []
  (starting..ending).each do |num|
    if num % 5 == 0 && num % 3 == 0
      results << "FizzBuzz"
    elsif num % 5 == 0
      results << "Buzz"
    elsif num % 3 == 0
      results << "Fizz"
    else
      results << num
    end
  end
  puts results.join(", ")
end

# LS solution
def fizzbuzz(starting_number, ending_number)
  result = []
  starting_number.upto(ending_number) do |number|
    result << fizzbuzz_value(number)
  end
  puts result.join(', ')
end

def fizzbuzz_value(number)
  case
  when number % 3 ==0 && number % 5 == 0
    'FizzBuzz'
  when number % 5 == 0
    'Buzz'
  when number % 3 == 0
    'Fizz'
  else
    number
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz