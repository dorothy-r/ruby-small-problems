# Create a simple tip calculator. The program should prompt for a bill amount
# and a tip rate. The program must compute the tip and then display both the
# tip and the total amount of the bill.

# Problem
# Input: two numbers: bill amount & tip rate
# Output: two numbers (float): tip and total (display w/ two decimal places)
#
# Examples: 
# Input: 200, 15  Output: $30.00, $230.00
# 
# Data Structures:
# No collections needed; need to convert input to floats.
# 
# Algorithm
# Ask user for the bill amount
# Ask user for the tip rate.
# Convert inputs to floats.
# Calculate the tip
# Add it to the bill
# Display the tip and total bill

def calculate_tip(bill, percent_tip)
  bill * (percent_tip/100)
end

def display_total(tip, total)
  puts "The tip is $#{'%.2f' % tip}"
  puts "The total is $#{'%.2f' % total}"
end

puts "What is the bill?"
bill = gets.to_f

puts "What is the tip percentage?"
tip_percent = gets.to_f

tip = calculate_tip(bill, tip_percent)
total = bill + tip
display_total(tip, total)