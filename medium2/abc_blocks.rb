=begin
# Problem: 
You have 13 two-letter blocks, as follows:
B:O  X:K  C:P  N:A  G:T  R:E  F:S  J:W  H:U  V:I  L:Y  Z:M
When spelling words, each block can only be used once; a word cannot contain
both letters from any block.
Write a method that returns true if the word passed in can be spelled from
these blocks, false otherwise.
Takes a word (string), as an argument, returns a boolean
The words/blocks are not case sensitive.

# Examples:
block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

# Data Structures:
Input: string
Output: boolean
Store the blocks in a hash or a multidimensional array

# Algorithm:
Store the blocks in a hash.
Iterate over the word passed into the method.
See if the letter contains a key or value.
Then check to see if the word contains its pair.
If it does, return false
If we can iterate over the whole word without finding both letters from a pair,
return true.

2nd approach:
Iterate over the hash.
For each pair, see if the word contains both the key and the value.
If so, return false. 
Otherwise, return true if there are no duplicate letters in the word.
=end

LETTER_BLOCKS = {
  "B" => "O", "X" => "K", "D" => "Q", "C" => "P", "N" => "A", "G" => "T", 
  "R" => "E", "F" => "S", "J" => "W", "H" => "U", "V" => "I", "L" => "Y", "Z" => "M"
}

# First idea:
def block_word?(word)
  word = word.upcase
  word.chars.each do |letter|
    return false if word.chars.include?(LETTER_BLOCKS[letter]) 
  end
  word.chars == word.chars.uniq
end

# Second approach:
def block_word?(word)
  word = word.upcase
  LETTER_BLOCKS.each do |key, value|
    return false if (word.include?(key) && word.include?(value))
  end
  word.chars == word.chars.uniq
end

# LS Solution:
BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string. upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
p block_word?('jester') == false
