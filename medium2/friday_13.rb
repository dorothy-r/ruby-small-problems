=begin
# Problem:
Write a method that returns the number of Friday the 13ths in the year given.
You may assume that the year is greater than 1752, and that the current 
calendar system will remain in use in the future. 

# Examples:
friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2

# Data Structures:
Input: an integer (representing the year)
Output: an integer (the count of Friday the 13ths)

# Algorithm:
Initialize a counter variable to 0.
Iterate over a range from 1-12.
With each number in the range, initialize a Date object using that number as the
month, the provided year as the year, and 13 as the date.
Check to see if that day is a Friday
If so, increment the counter variable.
Return the counter variable
=end


require 'date'

# My solution
def friday_13th(year)
  fri_13_count = 0
  (1..12).each do |month|
    thirteenth = Date.new(year, month, 13)
    fri_13_count += 1 if thirteenth.friday?
  end
  fri_13_count
end

# LS solution
def friday_13th(year)
  unlucky_count = 0
  thirteenth = Date.civil(year, 1, 13)
  12.times do
    unlucky_count += 1 if thirteenth.friday?
    thirteenth = thirteenth.next_month
  end
  unlucky_count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

