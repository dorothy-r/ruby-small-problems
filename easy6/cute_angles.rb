=begin
Write a method that takes a floating point number that represents an angle
between 0 and 360 degrees and returns a String that represents that angle in
degrees, minutes and seconds. You should use a degree symbol(°) to represent
degrees, a single quote(') to represent minutes, and a double quote(") to
represent seconds. A degree has 60 minutes, while a minute has 60 seconds.
Note: your results may differ slightly depending on how you round values, but
should be within a second or two of the results shown.
You should use two digit numbers with leading zeros when formatting the minutes
and seconds, e.g., 321°03'07".

# Problem:
Input: float
Output: string
Explicit requirements: The whole number part of the float is the degrees.
The decimal must be converted to minutes (there are 60 in a degree) and seconds
(there are 60 in a minute).
An angle of 360 can return 360°00'00" or 0°00'00".
The minute and second must be rounded to 2 places, and always be two digits,
with leading zeros when necessary.
Implicit requirements:
The method only needs to take numbers between 0 and 360.

Examples:
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

Data Structures:
Input: float
Output: string
Most of the work involved is math, and then converting to string.
Intermediate structures: maybe an array to catch the results of divmod?

Algorithm:
Take in the float.
Convert the number to seconds, by multiplying it by 3600.
Divide by 60 once: the remainder is the number of seconds.
Divid by 60 once again: the quotient is the number of degrees and the remainder
is the minutes.
Place all of the numbers in a correctly formatted string and return it.

=end

# My solution:

  SECONDS_PER_MINUTE = 60
  MINUTES_PER_DEGREE = 60

def dms(angle)
  total_seconds = angle * MINUTES_PER_DEGREE * SECONDS_PER_MINUTE
  total_minutes, seconds = total_seconds.divmod(SECONDS_PER_MINUTE)
  degrees, minutes = total_minutes.divmod(MINUTES_PER_DEGREE)
  "#{degrees}°#{"%02d" % minutes}'#{"%02d" % seconds}\""
end

# LS solution:
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}°%02d'%02d"), minutes, seconds)
end

puts dms(30)== %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")