=begin
# Problem:
A featured numbers is an odd number that is a multiple of 7, and whose digits
occur exactly once each. 49 is a featured number, but 98 is not (not odd), 97 
is not (not a multiple of 7), and 133 is not (the digit 3 appears twice).
Write a method that takes a single integer as an argument, and returns the next
featured number that is greater than the argument. Return an error message if
there is no next featured number.

# Examples:
featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

# Data Structures:
Input: an integer
Output: an integer
Iterating over a range will help

# Algorithm:
Take the given integer
Iterate over a range from that number+1 to 1_100_000_000
Test each number in the range to see if it is a multiple of 7, odd, and contains
no duplicate digits.
Return the first number that meets these criteria.
=end

# My Solution
def featured(number)
  ((number + 1)..9_876_543_210).each do |num|
    return num if (num.odd? && num % 7 == 0 && num.digits == num.digits.uniq)
  end
  'There is no possible number that fulfills those requirements.'
end


# LS Solution
def featured(number)
  number += 1
  number +=1 until number.odd? && number % 7 == 0

  loop do
    number_chars = number.to_s.split('')
    return number if number_chars.uniq == number_chars
    number += 14
    break if number >= 9_876_543_210
  end

  'There is no possible number that fulfills those requirements'
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements