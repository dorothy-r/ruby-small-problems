# Write a method that takes one argument, a string, and returns a new string
# with the words in reverse order.

# Problem:
# Input: a string
# Output: a new string, with the words in reverse order
# Note: any number of spaces results in ''
# The method takes a string, separates the words, and returns a new string
# with those words in reverse order.

# Examples:
# Input: 'Hello World'  Output: 'World Hello'
# Input: 'Reverse these words'  Output: 'words these Reverse'
# Input: ''  Output: ''
# Input: '     '  Output: ''

# Data Structures:
# Use an array to hold the words of the string and reverse them, before they 
# are put into the new string.

# Algorithm:
# Take a string, separate the words using spaces in the string
# Store the words in an array. Reverse it, and make a string from that array.

def reverse_sentence(string)
  string.split.reverse.join(' ')
end

puts reverse_sentence('Hello World')
puts reverse_sentence('Reverse these words')
puts reverse_sentence('')
puts reverse_sentence('    ')