=begin
As seen in the previous exercise, the time of day can be represented as the
number of minutes before or after midnight. If the number of minutes is
positive, the time is after midnight. If the number of minutes is negative,
the time is before midnight.
Write two methods that each take a time of day in 24 hour format, and return
the number of minutes before or after midnight, respectively. Both methods
should return a value in the range `0..1439`.
You may not use Ruby's Date and Time methods.

# Problem
Input: a string representing the time of day
Output: an integer in the range `0..1439`: the minutes before/after midnight
Have one method show how many minutes after midnight a certain time is
And another method showing how many minutes before midnight a time is
The output integer should always be positive
Need to account for the string '24:00' as well as '00:00'

# Examples
after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0

# Data Structures
Input: string
Output: positive integer
Splitting the string will create an array

# Algorithm
Get the time as a string.
Split the string on ':'
Convert each string to an int, save them as hours and minutes
Multiply hours by 60 and add to minutes.
When adding, this is the result
When subtracting the time, subtract the number of minutes from 1440
If result is 1440, return zero
Otherwise return the result

=end

HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# My solution
def after_midnight(time_of_day)
  hours, minutes = time_of_day.split(':').map { |str| str.to_i }
  total_minutes = (hours * MINUTES_PER_HOUR) + minutes
  return 0 if total_minutes == MINUTES_PER_DAY
  total_minutes
end

def before_midnight(time_of_day)
  total_minutes = MINUTES_PER_DAY - after_midnight(time_of_day)
  return 0 if total_minutes == MINUTES_PER_DAY
  total_minutes
end

# LS Solution
def after_midnight(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time_str)
  delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end

puts after_midnight('00:00')
puts before_midnight('00:00')
puts after_midnight('12:34')
puts before_midnight('12:34')
puts after_midnight('24:00')
puts before_midnight('24:00')