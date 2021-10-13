=begin
Write a program that will ask a user for an input of a word or multiple words
and give back the number of characters. Spaces should not be counted as a char.

# Problem:
Input: a string
Output: a string containing an integer.
The goal is to cound the number of characters in the string (excluding spaces)

# Examples:
Input: 'walk'
Output: 'There are 4 characters in "walk".'
Input: 'walk, don't run'
Output: 'There are 13 characters in "walk, don't run".'

# Data Structures:
Input: String
Output: Integer (presented in a string)
- in between, an array might be useful, to remove the spaces?

# Algorithm:
- Ask the user to input the string
- Store the original string
- Split and join (without spaces) the string.
- Get the length
- Return a sentence giving the number of characters in the string
=end

print 'Please write a word or multiple words: '
user_string = gets.chomp

count = user_string.split.join.length
puts "There are #{count} characters in '#{user_string}'."

=begin
LS Solution:

print 'Please write word or multiple words: '
input = gets.chomp
number_of_characters = input.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\"."
=end