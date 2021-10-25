=begin
Write a method that takes two strings as arguments, determines the longest of
the two strings, and then returns the result of concatenating the shorter string,
the longer string, and the shorter string once again. You may assume the strings
are of different lengths.
# Problem:
Input: two strings
Output: one string
Need to compare the lengths of each string. They will be different

# Examples:
Input: 'abc', 'defgh'  Output: "abcdefghabc"
Input: 'abcde', 'fgh'  Output: "fghabcdefgh"
Input: '', 'xyz'  Output: "xyz"

# Data Structures:
Strings for input and output. No other DS needed for intermediate steps

# Algorithm:
Compare the lengths of the two strings.
Store them as short and long strings, respectively
Concatenate short + long + short and return that new string

=end

# My solution
def short_long_short(str1, str2)
  short, long = [str1, str2].minmax { |string| string.size <=> b.size }
  short + long + short
end

# LS solution
def short_long_short(string1, string2)
  if string1.length > string2.length
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end

puts short_long_short('abc', 'defgh')
puts short_long_short('abcde', 'fgh')
puts short_long_short('', 'xyz')