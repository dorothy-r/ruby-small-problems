=begin
# Problem
Write a method that takes a sentence string as input, and returns the same
string with any sequence of the words 'zero', 'one', 'two', 'three', 'four',
'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.
Input: a string
Output: the same string with numerical words converted to a string of digits

# Example:
word_to_digit('Please call me at five five five one two three four. Thanks.') 
  == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# Data Structures:
Input: string
Output: string
Also, will use a hash to store the word/digit conversions, and will split the
input into an array.

# Algorithm:
Create a hash with the word and digit strings
Split the input into an array
Iterate over the array, substituting the digit for the word when applicable

=end

DIGITS_WORDS = { 'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 
  'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 
  'nine' => '9' }

def word_to_digit(string)
  DIGITS_WORDS.each_key do |word|
    string.gsub!(/\b#{word}\b/, DIGITS_WORDS)
  end
  string
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'