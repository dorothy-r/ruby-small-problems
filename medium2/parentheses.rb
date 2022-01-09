=begin
# Problem:
Write a method that takes a string as an argument, and returns true if all
parentheses in the string are properly balanced, false otherwise. To be
properly balanced, parenthese must occur in matching '(' and ')' pairs.

# Examples:
balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false

# Data Structures:
Input: string
Output: boolean
Iterating through an array of characters will help in the middle, as will using
a stack/array to keep track of parentheses.

# Algorithm:
My idea is to use a stack-type structure to keep track of the parentheses.
Initialize an array for this purpose.
Iterate through the characters of the string.
Push the '(' characters to the array. 
When we get to a ')', pop one '(', unless the array doesn't contain ')'.
In that case, push the ')'
If the array is empty after iterating through the characters, return true.
Otherwise, return false. 
=end

# My solution
def balanced?(string)
  parentheses = []
  string.chars.each do |char|
    if char == ')' && parentheses.empty?
      return false
    elsif char == '('
      parentheses << char
    elsif char == ')'
      parentheses.pop
    end
  end
  parentheses.empty?
end

# LS solution
def balanced?(string)
  parens = 0
  string.each_char.do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false