# Write a program that will ask for user's name. The program will then greet
# the user. If the user writes "name!" then the computer yells back.
#
# Problem:
# Input: name (str)
# Output: one of two greetings (str), depending on whether the name ends with '!'
#
# Examples:
# Input: Bob  Output: Hello Bob.
# Input: Bob! Output: HELLO BOB. WHY ARE WE SCREAMING?
#
# Data Structures:
# No collections. Just strings. Will also need a conditional statement.
#
# Algorithm:
# Ask the user for their name.
# Determine whether it ends with '!'
# If it does, use "yell" greeting. Otherwise, use normal greeting

def greet(name)
  puts "Hello #{name}."
end

def shout_greet(name)
  name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
end

puts "What is your name?"
user_name = gets.chomp

user_name[-1] == '!' ? shout_greet(user_name) : greet(user_name)
