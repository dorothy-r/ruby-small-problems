=begin
Write a method that takes a string as an argument and returns a new string in
which every uppercase letter is replaced by its lowercase version, and every
lowercase letter by its uppercase version. All other characters should be
unchanged.
You may not use `String#swapcase`; write your own version of this method.

# Problem:
Input: a string
Output: a new string
The new string should replace uppercase letters with lowercase, and vice versa
Keep all other characters the same.

# Examples:
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# Data Structures:
Input: string
Output: string
An array of characters in the interim would be helpful. Maybe also arrays of
uppercase and lowercase letters?

# Algorithm:
Create an array of uppercase letters, and one of lowercase letters
Split the input string into characters.
Iterate through the characters. 
  If the character is in the uppercase array, reassign it to the same index in
  the lowercase array, and vice versa.
Rejoin the characters into a string.

=end

# My over-complicated solution
UPPERCASE_CHARS = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
LOWERCASE_CHARS = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)

def swapcase(string)
  char_array = string.chars.map do |char|
    if UPPERCASE_CHARS.include?(char)
      char = LOWERCASE_CHARS[UPPERCASE_CHARS.index(char)]
    elsif LOWERCASE_CHARS.include?(char)
      char = UPPERCASE_CHARS[LOWERCASE_CHARS.index(char)]
    else
      char
    end
  end
  char_array.join
end

# LS solution
def swapcase(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'