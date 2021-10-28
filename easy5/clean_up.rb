=begin
Given a string that consists of some words (all lowercased) and an assortment
of non-alphabetic characters, write a method that returns that string with all
of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic
characters occur in a row, you should only have one space in the result (the result
should never have consecutive spaces).

# Problem:
Input: a string of lowercased words and non-alphabetic characters
Output: a string of lowercased words and spaces (all other characters
replaced by spaces, with no consecutive spaces)
Make a new string that only contains the alphabetic characters. All other
characters will be replaced by spaces (never consecutive)

# Example:
cleanup("---what's my +*& line?") == ' what s my line '

# Data Structues:
Input: a string
Output: a string
Would it be useful to use an array in an intermediate step?
Might be possible to transform the string without using an array

# Algorithm
Iterate through the characters.
If a character is not lowercase alphabetic, replace it with a space
unless the previous character is also a space

=end

# My solution
def cleanup(string)
  new_string = ''
  string.each_char do |char|
    if ('a'..'z').include?(char)
      new_string << char
    else
      new_string << ' ' unless new_string[-1] == ' '
    end
  end
  new_string
end

# LS solution 1
ALPHABET = ('a'..'z').to_a

def cleanup(text)
  clean_chars = []

  text.chars.each do |char|
    if ALPHABET.include?(char)
      clean_chars << char
    else
      clean_chars << ' ' unless clean_chars.last == ' '
    end
  end

  clean_chars.join
end

# LS solution 2
def cleanup(text)
  text.gsub(/[^a-z]/, ' ').squeeze(' ')
end

puts cleanup("---what's my +*& line?") == ' what s my line '