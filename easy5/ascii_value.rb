=begin
Write a method that determines and returns the ASCII string value of a string
that is passed in as an argument. The ASCII string value is the sum of the
ASCII values of every character in the string. (You may use String#ord to 
determine the ASCII value of a character.)

# Problem
Input: a string
Output: an integer
Get the ASCII value of each character in the string, then add them together.
What does an empty string return? => 0

# Examples
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

# Data Structures
Input: string
Output: integer
Maybe an array in between to hold the characters' ASCII values?

# Algorithm
Create an array
Iterate over the characters in the string
Get each character's ASCII value and add it to the array
Add up all of the numbers in the array and return the sum

=end

# My solution
def ascii_value(string)
  ascii_values = []
  string.each_char { |char| ascii_values << char.ord}
  ascii_values.sum
end

# LS solution
def ascii_value(string)
  sum = 0
  string.each_char { |char| sum += char.ord }
  sum
end

puts ascii_value('Four score')
puts ascii_value('Launch School')
puts ascii_value('a')
puts ascii_value('')