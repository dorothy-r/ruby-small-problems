=begin
# Problem:
Write a method that takes a string as an argument, and returns and Array that
contains every word from the string, to which you have appended a space and the
word length.
You may assume that words in the string are separated by exactly one space, and
that any substring of non-space characters is a word.
Input: a string
Output: an array containing every word, plus its length

# Examples:
word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []

# Data Structures
Input: string
Output: array

# Algorithm
Break the string into an array of individual words by separating it at the " " 
characters.
Iterate over that array:
  get the length of the current word
  append that number to the word
Return the array
=end

def word_lengths(string)
  string.split.map do |word|
    word.concat(" #{word.length}")
  end
end

puts word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

puts word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

puts word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

puts word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

puts word_lengths("") == []