=begin
The time of day can be represented as the number of minutes before or after
midnight. If the number of minutes is positive, the time is after midnight. If
the number of minutes is negative, the time is before midnight.
Write a method that takes a time using this minute-based format and returns the
time of day in 24 hour format (hh:mm). Your method should work with any integer
input.
You may not use Ruby's `Date` and `Time` classes.

# Problem
Input: an integer (positive or negative)
Output: a string representing the time of day
Take a number and determine the time of day represented by adding/subtracting
that number to midnight.
Make that time into a string.

# Examples
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

# Data Structures
Input: integer
Output: string
In between, mostly arithmetic with integers. No collections needed.

# Algorithm
Take the integer and convert it to hours/minutes using divmod.
If it is negative, subtract the hours from 24 and the minutes from 60
Subtract an additional hour if there are minues to subtract.
Make a string with the numbers in "hh:mm" format

=end

# My solution
def time_of_day(int)
  hours, minutes = int.abs.divmod(60)
  hours %= 24
  if int >= 0
    hh = hours
    mm = minutes
  elsif int < 0 && minutes == 0
    hh = 24 - hours
    mm = minutes
  else 
    hh = 23 - hours
    mm = 60 - minutes
  end
  format("%02d:%02d", hh, mm)
end

# LS solution
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def normalize_minutes_to_0_through_1439(minutes)
  while minutes < 0
    minutes += MINUTES_PER_DAY
  end

  minutes % MINUTES_PER_DAY
end

def time_of_day(delta_minutes)
  delta_minutes = normalize_minutes_to_0_through_1439(delta_minutes)
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

puts time_of_day(0)
puts time_of_day(-3)
puts time_of_day(35)
puts time_of_day(-1437)
puts time_of_day(3000)
puts time_of_day(800)
puts time_of_day(-4231)