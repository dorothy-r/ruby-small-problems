=begin
Write a method that takes a String as an argument, and returns a new String
that contains the original value using a staggered capitalization scheme in
which every other character is capitalized, and the remaining characters are
lowercase.Characters that are not letters should not be changed, but count as
characters when switiching between upper and lowercase.

# Problem:
Input: a string
Output: a new string
The new string should capitalize every other character. Non-alphabetic chars do
'count' in the upper/lower stagger, even though they aren't changed.
The first character is capitalized, then alternate from there.

# Examples:
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# Data Structures:
Input: string
Output: string
Will need an array of characters for the intermediate steps

# Algorithm:
Break the string argument into an array of characters.
Iterate over the characters.
Capitalize characters with an even index number.
Make characters with an odd index number lowercase.
Join the characters back to a string.

=end

# My solution
def staggered_case(string)
  new_string = ''
  string.chars.each_with_index do |char, index|
    if index.even?
      new_string << char.upcase
    else
      new_string << char.downcase
    end
  end
  new_string
end

# LS solution
def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'