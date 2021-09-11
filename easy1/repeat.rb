# Write a method that takes two arguments, a string and a positive
# integer, and prints the string as many times as the integer indicates.

# Inputs: a string and a positive integer
# Outputs: the string, [integer] number of times
# The program will print [string] to the screen [integer] times

# Examples:
# In: 'hello', 3
# Out: hello
#      hello
#      hello

# In: 'WOW!', 1
# Out: 'WOW!'


# Data structure: none

# Algorithm: [integer] times:
#              print [string] to screen

def repeat(str, num)
  num.times { puts str }
end

repeat('Hello', 3)
repeat('WOW!', 1)