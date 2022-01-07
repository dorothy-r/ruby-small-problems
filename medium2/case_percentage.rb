=begin
# Problem:
Write a method that takes a string, and then returns a hash that contains 3
entries:
  1. the percentage of characters in the string that are lowercase
  2. the percentage of characters that are uppercase
  3. therpercentage of characters that are neither
You may assume that the string will always contain at least one character.
Spaces count as characters.

# Examples:
letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

# Data Structures:
Input: string
Output: hash
Can first store the raw numbers of each case in a hash, then calculate %age

# Algorithm:
Take the string
Get the length of the string.
Create a new hash, with a default value of 0
Iterate over the characters in the string.
If the character is lowercase, increment the hash's lowercase entry by 1.
Do the same for uppercase characters, and those that are neither.
Iterate over the hash, converting the numbers to percentages.
=end

# My Solution
def letter_percentages(string)
  str_length = string.size
  case_hash = { uppercase: 0.0, lowercase: 0.0, neither: 0.0 }
  string.chars.each do |char|
    if ('a'..'z').include?(char)
      case_hash[:lowercase] += 1
    elsif ('A'..'Z').include?(char)
      case_hash[:uppercase] += 1
    else
      case_hash[:neither] += 1
    end
  end

  case_hash.map { |key, value| [key, (value * 100) / str_length] }.to_h
end

# LS Solution
def letter_percentages(string)
  counts = {}
  percentages = {}
  characters = string.chars
  length = string.length

  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }

  calculate(percentages, counts, length)

  percentages
end

def calculate(percentages, counts, length)
  percentages[:lowercase] = (counts[:lowercase] / length.to_f) * 100
  percentages[:uppercase] = (counts[:uppercase] / length.to_f) * 100
  percentages[:neither] = (counts[:neither] / length.to_f) * 100
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
