=begin
Write a method that returs the next to last word in the String passed to it as
an argument.
Words are any sequence of non-blank characters.
You may assume that the input String will always contain at least two words.

# Problem:
Input: a string
Output: a string
The output string should be the next-to-last word in the input string.
The input will always contain at least two words.

# Examples:
penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

# Data Structures:
Input: string
Output: string
Will need to split the input string into a array

# Algorithm:
Split the given string into an array of words (separating on ' ')
Return the second to last element in the array

=end

# My solution
def penultimate(string)
  string.split[-2]
end

# LS solution
def penultimate(words)
  words_array = words.split
  words_array[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'