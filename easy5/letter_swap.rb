=begin
Given a string of words separated by spaces, write a method that takes this
string of words and returns a string in which the first and last letters of
every word are swapped.
You may assume that every word contains at least one letter, and that the
string will always contain at least one word. You may also assume that each
string contains nothing but words and spaces.

# Problem
Input: a string of words separated by spaces
Output: a string of words, with the first and last letter of each word swapped
The strings will only contain words and spaces
There will always be at least one word, and each word will always have at least
one letter

# Examples
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

# Data structures
Input: string
Output: string
Splitting the string will return an array, which we can iterate through to swap
the letters. Then rejoin the modified words into a string.

# Algorithm
Split the input string at the spaces.
Iterate through the words, swapping the first and last letters of each
Rejoin the words into a new string and return it

=end

# My solution
def swap(string)
  new_str = string.split.each { |word| word[0], word[-1] = word[-1], word[0] }
  new_str.join(' ')
end

# LS solution
def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end

puts swap('Oh what a wonderful day it is')
puts swap('Abcde')
puts swap('a')