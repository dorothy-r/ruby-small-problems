=begin
# Problem
Write a method that takes a string, and returns a new string in which every
consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and
whitespace should not be doubled.
Input: a string
Output: a new string, meeting the requirements above

# Examples:
double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

# Data Structures:
Input: string
Output: string
Iterating over an array as an intermediate step will be helpful

# Algorithm:
Create an array of consonants.
Break the input string into an array of characters.
Iterate over that array. If the character is in the consonants array, double it.
Otherwise, keep it the same.
Join the array back together, and return the string.

=end

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

# My solution
def double_consonants(string)
  new_chars = string.chars.map do |char|
    if CONSONANTS.include?(char.downcase)
      char * 2
    else
      char
    end
  end
  new_chars.join
end

# LS solution
def double_consonants(string)
  result = ''
  string.each_char do |char|
    result << char
    result << char if CONSONANTS.include?(char.downcase)
  end
  result
end

puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""