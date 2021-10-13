=begin
Write another method that returns true if the string passed as an argument is
a palindrome, false otherwise. This time, however, your method should be
case-insensitive, and it should ignore all non-alphanumeric characters. If you
wish, you may simplify things by calling the palindrome? method you wrote in
the previous exercise.

# Problem:
Input: a string
Output: a boolean value
This time, ignore non-alphanumeric characters and case differences.

# Examples:
real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false

# Data Structures:
A string. Either transform it to remove extra characters, or create a new one

# Algorithm:
Take a string argument
Downcase it
Remove all non-alphanumeric characters.
(The above two actions should either be done by mutating the original string
or by creating a new string.)
Check to see whether the string is equal to the reversed string
=end

def real_palindrome?(str)
  str.downcase!
  new_str = ''
  str.each_char do |char|
    if ('0'..'9').include?(char) || ('a'..'z').include?(char)
      new_str << char
    end
  end
  new_str == new_str.reverse
end

puts real_palindrome?('madam') 
puts real_palindrome?('Madam')           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam")  # (only alphanumerics matter)
puts real_palindrome?('356653')
puts real_palindrome?('356a653')
puts real_palindrome?('123ab321')

# LS Solution
def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  string == string.reverse
end