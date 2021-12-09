=begin
Write a method that returns a list of all substrings of a string. The returned
list should be ordered by where in the string the substring begins. This means
that all substrings that start at position 0 should come first, then all
substrings that start at position 1, and so on. Since multiple substrings will
occur at each position, the substrings at a given position should be returned
in order from shortest to longest.
You may (and should) use the `leading_substrings` method you wrote in the
previous exercise.
Input: a string
Output: an array containing all substrings of the string
The list should be ordered by where in the original string the substring begins
and then by length, from shortest to longest.
Use the method from the previous exercise.

# Example:
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

# Data Structures:
Input: string
Output: array
Using the previous method will return an array of the substrings at each
starting position. These will need to be combined/flattened.

# Algorithm
Create an empty array for the results.
Iterate over the string. For each character, call the leading subtrings method
on the substring going from that character to the end of the string.
Add the results to the empty array. Flatten the array, and return it
=end

def leading_substrings(str)
  substrings = []
  (1..str.length).each do |num|
    substrings << str.slice(0, num)
  end
  substrings
end

# My solution
def substrings(str)
  all_substrings = []
  str.chars.each_index do |index|
    current_substring = str[index..-1]
    all_substrings << leading_substrings(current_substring)
  end
  all_substrings.flatten
end

# LS solution
def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]