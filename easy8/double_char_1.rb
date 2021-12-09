=begin
# Problem:
Write a method that takes a string, and returns a new string in which every
character is doubled.
Input: a string
Output: a new string

# Examples:
repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

# Data Structures:
Input: string
Output: string
Using an array of the string's characters could be useful as an intermediate
step

# Algorithm:
Break the input string into an array of characters.
Iterate over this array, and double each character.
Join the array together into a new string.

=end

# My solution
def repeater(string)
  string.chars.map { |char| char * 2 }.join
end

# LS solution
def repeater(string)
  result = ''
  string.each_char do |char|
    result << char << char
  end
  result
end

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''
