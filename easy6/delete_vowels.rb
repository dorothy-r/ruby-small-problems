=begin
Write a method that takes an array of strings, and returns an array of the same
string values, except with the vowels (a, e, i, o, u) removed.

# Problem:
Input: an array of strings
Output: an array of the same string values, with the vowels removed
Should it be a new array object? Probably yes, I think.
Does it matter if the strings contain spaces or non-alphabetic characters?
Explicit rules: The returned array should have the same string values in the
same order, just without vowels.
Implicit rules: Should return a new array object.

# Examples:
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# Data Structures:
Input: array
Output: array
Should iterate through the original array to populate the new one. I don't
think an intermediate collection object is necessary.

# Algorithm:
Take in an array of strings
Create a new array
Iterate through the original array:
  On each iteration, remove all vowels from the current string
  Push the modified string to the new array
Return the new array

=end


# My Solution
def remove_vowels(arr)
  arr.map do |str|
    str.gsub(/[AEIOUaeiou]/, '')
  end
end

# LS Solution
def remove_vowels(strings)
  strings.map { |string| string.delete('aeiouAEIOU') }
end

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']