=begin
# Problem
Write a method that takes a non-empty string argument, and returns the middle
character or characters of the argument. If the argument has an odd length, you
should return exactly one character. If the argument has an even length, you
should return exactly two characters.
Input: a non-empty string
Output: a string of one or two characters

# Examples:
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

# Data Structures:
Input: string
Output: string
In between, I don't think another structure is necessary. Maybe an array?

# Algorithm:
Get the length of the input string. 
If the length is odd, return the middle character, at index position (length/2) 
If it is even, return the middle two characters, a slice of 2 from index 
position (length/2) -1

=end

# My solution
def center_of(string)
  length = string.size
  if length.even?
    string.slice((length/2 - 1), 2)
  else
    string[length/2]
  end
end

# LS solution
def center_of(string)
  center_index = string.size / 2
  if string.size.odd?
    string[center_index]
  else
    string[center_index - 1, 2]
  end
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'