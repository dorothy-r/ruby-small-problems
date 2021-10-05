# Build a program that asks a user for the length and width of a room in meters and
# displays the area of the room in both square meters and square feet. (Don't worry
# about input validation at this time.)

# Problem:
# Input: 2 numbers (int or float): width and length in meters
# Output: 2 numbers (float): area in sq meters and in sq feet
# 
# Example:
# Input: 10, 7
# Output: 70.0, 753.47
#
# Data Structures:
# No collections. Just arithmetic to change input to output.
# 
# Algorithm
# Ask user for length in meters & capture in variable
# Ask user for width in meters & caputre in variable
# Multiply length * width to get area in sq meters
# Multiply area in sq meters by 10.7639 to get area in sq feet.
# Display results

M2_TO_FT2 = 10.7639

puts "Enter the length of the room in meters: "
length = gets.chomp.to_f

puts "Enter the width of the room in meters: "
width = gets.chomp.to_f

area_meters = (length * width).round(2)
area_feet = (area_meters * M2_TO_FT2).round(2)

puts "The area of the room is #{area_meters} square meters (#{area_feet} square feet)."

# Further Exploration: Modify this program to ask for the input measurements in feet, 
# and display the results in sq feet, sq inches, and sq centimeters.

FT2_TO_IN2 = 144
FT2_TO_CM2 = 929.03

puts "Enter the length of the room in feet: "
length = gets.chomp.to_f

puts "Enter the width of the room in feet: "
width = gets.chomp.to_f

area_feet = (length * width).round(2)
area_inches = (area_feet * FT2_TO_IN2).round(2)
area_centimeters = (area_feet * FT2_TO_CM2).round(2)

puts "The area of the room is: #{area_feet} square feet"
puts "(#{area_inches} square inches or #{area_centimeters} square centimeters)."

