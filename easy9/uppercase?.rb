=begin
# Problem
Write a method that takes a string argument, and returns true if all of the
alphabetic characters inside the string are uppercase, false otherwise.
Characters that are not alphabetic should be ignored.
Empty strings return true
Input: a string
Output: a boolean value

# Examples:
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

# Data Structures:
Input: string
Output: boolean
Iterating through an array of the string's characters might help?

# Algorithm:
Make an array of lowercase alphabet
Iterate through string; see if each character is in the alphabet array.
If so, return false. Otherwise, return true
=end

# My solution
LOWERCASE_CHARS = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)

def uppercase?(string)
  string.chars.select { |char| LOWERCASE_CHARS.include?(char) }.empty?
end

# LS solution
def uppercase?(string)
  string == string.upcase
end

puts uppercase?('t') == false
puts uppercase?('T') == true
puts uppercase?('Four Score') == false
puts uppercase?('FOUR SCORE') == true
puts uppercase?('4SCORE!') == true
puts uppercase?('') == true