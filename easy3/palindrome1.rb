=begin
Write a method that returns true if the string passed as an argument is a
palindrome, false otherwise. For this exercise, case matters as do
punctuation and spaces.

# Problem
Input: a string
Output: a boolean value
Return true if the string is a palindrome, false otherwise.

# Examples
palindrome?('madam') == true
palindrome?('Madam') == false
palindrome?('madam i'm adam') == false
palindrome?('356653') == true

# Data Structures
Input: String
Output: boolean
Would an array of characters be useful in the process?

# Algorithm
Take a string as input
Determine the midpoint of the string
Compare the first and last characters
Work inward towards the midpoint, comparing characters
When there is a mismatch, return false
If there isn't return true
=end

def palindrome?(str)
  midpoint = (str.size) / 2
  i = 1
  while midpoint > i
    return false if str[i - 1] != str[-i]
    i += 1
  end
  true
end

puts palindrome?('madam') 
puts palindrome?('Madam')         # (case matters)
puts palindrome?("madam i'm adam")  # (all characters matter)
puts palindrome?('356653') 

# LS Solution
def plaindrome?(string)
  string == string.reverse
end