=begin
Write a method that returns a list of all substrings of a string that start at
the beginning of the original string. The return value should be arranged in
order from shortest to longest substring.

# Problem
Input: a string
Output: an array
The returned array should contain all substrings that start at the beginning of
the original string.
It should be arranged from shortest to longest.
What to do with spaces in the strings?
What to do with empty strings?

# Examples
leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# Data Structures:
Input: string
Output: array
I don't think an intermediate DS is necessary.

# Algorithm:
Create an empty array for the results.
Get the length of the string.
Iterate over a range from 1 to the length of the string, taking a slice of the
current number's size from the string each time, and adding it to the array.
Return the array.

=end

# My solution
def leading_substrings(str)
  substrings = []
  (1..str.length).each do |num|
    substrings << str.slice(0, num)
  end
  substrings
end

# LS solution
def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

puts leading_substrings('abc') == ['a', 'ab', 'abc']
puts leading_substrings('a') == ['a']
puts leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']