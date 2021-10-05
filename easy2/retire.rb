# Build a program that displays when the user will retire and how many years
# she has to work until retirement

# Input: 2 numbers: current age and retirement age.
# Output: 2 years: curret year and retirement year.
#         number: years until retirement year
#
# Example:
# Input: 30, 70
# Output: 2016, 2056, 40
#
# Data Structures:
# No collections. Convert input to int, then do arithmetic
# Maybe set current year as a constant?
#
# Algorithm:
# Ask user to input current age and retirement age.
# Calculate the difference.
# Determine which year the user will reach retirement age.
# Display results

current_year = Time.now.year

puts "How old are you?"
current_age = gets.to_i

puts "At what age would you like to retire?"
retirement_age = gets.to_i

working_years = retirement_age - current_age
retirement_year = current_year + working_years

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{working_years} years of work to go!"
