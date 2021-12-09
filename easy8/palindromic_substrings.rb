=begin
# Problem
Write a method that returns a list of all substrings of a string that are
palindromic. That is, each substring must consist of the same sequence of
characters forwards as it does backwards. The return value should be arranged
in the same sequence as the substrings appear in the string. Duplicate
palindromes should be included multiple times.
You may (and should) use the `substrings` method you wrote in the previous
exercise.
For the purposes of this exercise, you should consider all characters and pay
attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor 
"Abc-bA" are. In addition, assume that single characters are not palindromes.
Input: string
Output: an array of all palindromic substrings

# Examples:
palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

# Data Structures
Input: string
Output: array of strings
The 'helper' method returns an array. This array can be filtered to get to the
results array

# Algorithm
Call the substrings method on the string.
Iterate through the results, and determine which stubstrings are palindromes:
  -is the word the same as the reversed word?
If it is, save the word to the results array
=end

def leading_substrings(str)
  substrings = []
  (1..str.length).each do |num|
    substrings << str.slice(0, num)
  end
  substrings
end

def substrings(str)
  all_substrings = []
  str.chars.each_index do |index|
    current_substring = str[index..-1]
    all_substrings.concat(leading_substrings(current_substring))
  end
  all_substrings
end

# My solution
def palindromes(string)
  all_substrings = substrings(string)
  all_substrings.select { |str| str.size > 1 && str == str.reverse }
end

# LS solution
def palindromes(string)
  all_substrings = substrings(string)
  results = []
  all_substrings.each do |substring|
    results << substring if palindrome?(substring)
  end
  results
end

def palindrome?(string)
  string == string.reverse && string.size > 1
end

puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]