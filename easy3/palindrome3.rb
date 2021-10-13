=begin
Write a method that returns true if its integer argument is palindromic, false
otherwise. A palindromic number reads the same forwards and backwards.

# Problem:
Input: an integer
Output: a boolean value - true if the integer is palindromic, false if not.

# Examples:
palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true

# Data Structures
Input: integer
Maybe convert to string to determine if palindromic.
Test to see if the string created with the integer is equal to the reversed
string.
Return true or false based on the result
=end

def palindromic_number?(int)
  int.to_s == int.to_s.reverse
end

puts palindromic_number?(34543)
puts palindromic_number?(123210) 
puts palindromic_number?(22)
puts palindromic_number?(5)