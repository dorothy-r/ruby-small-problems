=begin
Modify the `word_sizes` method from the previous exercise to exclude
non-letters when determining word size. For instance, the length of "it's" is
3, not 4.

# Problem
Input: a string of space separate words
Output: a hash showing the number of words of each length
Similar to the last problem, only this time, non-letters whould not be counted
in a word's length.

# Examples
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}

# Data Structures
Input: string
Output: hash
An array in the middle is helpful

# Algorithm
Create an empty hash
Separate the string into an array of words
Remove the non-letters from the words.
Iterate through the array, counting the length of each word.
Add the length of the word to the hash, unless that length is already there.
If it is a new addition, set the value to 1, otherwise increment the value
Return the hash

=end

# My solution
def word_sizes(words_string)
  sizes = Hash.new(0) # sets the default value of any non-existing keys to 0
  words_string.split.each do |word|
    word.delete!("^A-z")
    sizes[word.size] += 1
  end
  sizes
end

# LS solution
def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    clean_word = word.delete('^A-Za-z')
    counts[clean_word.size] += 1
  end
  counts
end

puts word_sizes('Four score and seven.')
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}