=begin
Write a method that takes a string, and then returns a hash that contains 3
entries: one represents the number of characters in the string that are
lowercase letters, one the number of characters that are uppercase letters, and
one the number of characters that are neither.

# Problem:
Input: a string
Output: a hash
The hash should have 3 pairs: one for the number of lowercase chars, one for
uppercase, and one for neither.

# Examples:
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# Data Structures:
Input: string
Output: hash
May be helpful to have an array of characters to iterate through?

# Algorithm:
Set up the return hash with intial values at `0`.
Iterate through the string.
  Determine whether each character is uppercase, lowercase, or neither.
  Increment the appropriate hash value.
Return the hash

=end

# My solution
def letter_case_count(string)
  char_hash = { lowercase: 0, uppercase: 0, neither: 0 }
  string.each_char do |char|
    if char.between?('a', 'z')
      char_hash[:lowercase] += 1
    elsif char.between?('A', 'Z')
      char_hash[:uppercase] += 1
    else
      char_hash[:neither] += 1
    end
  end

  char_hash
end

# LS solution 1
UPPERCASE_CHARS = ('A'..'Z')
LOWERCASE_CHARS = ('a'..'z')

def letter_case_count(string)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }

  string.chars.each do |char|
    if UPPERCASE_CHARS.inclue?(char)
      counts[:uppercase] += 1
    elseif LOWERCASE_CHARS.include(char)
      counts[:lowercase] += 1
    else
      counts[:neither] += 1
    end
  end

  counts
end

# LS solution 2
def letter_case_count(string)
  counts = {}
  characters = string.chars
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  counts
end

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }