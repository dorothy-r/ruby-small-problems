=begin
Write a method that takes a string argument and returns a new string that
contains the value of the original string with all consecutive duplicate
characters collapsed into a single character. You may not use `String#squeeze`
or `String#squeeze!`

# Problem
Input: a string
Output: a string containing the value of the the original string without
consecutive duplicate characters
Empty string returns empty string

# Examples
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

# Data Structures
Input: string
Output: string
Possibly an array in between?

# Algorithm
Iterate through the input string
Push letters to a new string unless the previous letter has the same value
Return the new string

=end

# My solution
def crunch(string)
  new_string = ''
  string.each_char do |char|
    new_string << char unless new_string[-1] == char
  end
  new_string
end

# LS solution
def crunch(text)
  index = 0
  crunch_text = ''
  while index <= text.length - 1
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  crunch_text
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''