=begin
Write a method that takes a single String argument and returns a new string
that contains the original value of the argument with the first character of
every word capitalized and all other letters lowercase.
You may assume that words are any sequence of non-blank characters.

# Problem:
Input: a string
Output: a new string
In the new string, the first character of every word should be capitalized, and
all other letters should be lowercase.
A word is any sequence of non-blank characters.

# Examples:
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# Data Structures:
Input: string
Output: string
Will need to break the string into an array of words in between

# Algorithm:
Split the string argument into an array of words
Iterate over this array:
  Capitalize the first letter of each word
Join the words back into a single string
Return the string

=end

# My solution
def word_cap(string)
  string.split.map { |word| word.capitalize }.join(' ')
end

# LS solution (more succinct syntax)
def word_cap(words)
  words.split.map(&:capitalize).join(' ') # can use this shorthand with any
                                          # method that has no required args.
end

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'