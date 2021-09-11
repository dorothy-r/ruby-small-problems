# Write a method that takes one argument, a string containing one or more
# words, and returns the given string with words that contain five or more
# characters reversed. Each string will consist of only letters and spaces.
# Spaces should be included only when more than one word is present.

# Problem:
# Input: a string
# Output: the string modified with words that contain five or more characters
# reversed.
# Each string will only consist of letters and spaces.
# Spaces should be included only when more than one word is present.
# A method will take a string, separate the words, and reverse those that are
# five or more characters. Then it will return a string with those reversed words.


# Examples:
# Input: 'Professional'  Output: 'lanoisseforP'
# Input: 'Walk around the block'  Output: 'Walk dnuora the kcolb'
# Input: 'Launch School'  Output: 'hcnauL loohcS'

# Data Structures:
# An array will be needed to hold the words from the string.

# Algorithm:
# Split the string into words, at the spaces
# Iterate over the words and reverse those with length >= 5
# Join the words back into a string, now containing the reversed words

# My Solution
def reverse_words(string)
  words = string.split.map do |word| 
    if word.length >= 5
      word.reverse
    else
      word
    end
  end
  words.join(' ')
end

# LS Solution
def reverse_words(string)
  words = []
  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end
  words.join(' ')
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')