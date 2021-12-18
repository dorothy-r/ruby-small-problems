=begin
# Problem:
Write a method that takes a first name, a space, and a last name passed as a
single String argument, and returns a string that contains the last name, a
comma, a space, and the first name.
Input: a two-word string
Output: a string with the words reversed, separated by a comma

# Example:
swap_name('Joe Roberts') == 'Roberts, Joe'

# Data Structres:
Input: string
Output: string
Will need an array of the words in the string in the interim

# Algorithm:
Separate the words of the string into an array
Reverse that array, and join it with a comma and a space.
=end

def swap_name(name)
  name.split.reverse.join(', ')
end

puts swap_name('Joe Roberts') == 'Roberts, Joe'