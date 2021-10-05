# Build a program that randomly generates and prints Teddy's age
# (a random number between 20 and 200).

# Problem:
# Input: none
# Output: a random number between 20 and 200
#
# Example:
# Output: 'Teddy is 70 years old!'
#
# Data Structures:
# No collections. A randomly generated integer.
#
# Algorithm:
# Generate a random number between 20 and 200.
# Print it to the screen in a sentence telling Teddy's age

age = rand(20..200)
puts "Teddy is #{age} years old!"

# Further exploration:
# Modify this program to ask for a name, and then print the age for that person.
# For an extra challenge, use "Teddy" as the name if no name is entered.

puts "What is your name?"
name = gets.chomp
name = 'Teddy' if name.strip.empty?

age = rand(20..200)

puts "#{name} is #{age} years old!"

