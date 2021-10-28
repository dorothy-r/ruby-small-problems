=begin
Write a method that takes a string with one or more space separated words and
retursn a hash that shows the number of words of different sizes.
Words consist of any string of characters that do not include a space.

# Problem
Input: a string with one or more space separated words
Output: a hash showing the number of words of each length
Will need to separate the string into separate words, count the characters in
each and keep track of the number of words with the same amount of characters.
An empty string returns an empty hash.
What about a string of one word?

# Examples
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

# Data Structures
Input: string
Output: hash
Using an array for the different words in the string would be a good
intermediate step.

# Algorithm
Create an empty hash
Separate the string into an array of words
Iterate through the array, counting the length of each word.
Add the length of the word to the hash, unless that length is already there.
If it is a new addition, set the value to 1, otherwise increment the value
Return the hash

=end

# My solution
def word_sizes(string)
   sizes = {}
   string.split.each do |word|
    sizes.key?(word.length) ? sizes[word.length] += 1 : sizes[word.length] = 1
   end
   sizes
end

# LS solution
def word_sizes(words_string)
  counts = Hash.new(0) # sets the default value of any non-existing keys to 0
  words_string.split.each do |word|
    counts[word.size] += 1
  end
  counts
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}
