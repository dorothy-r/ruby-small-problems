=begin
# Problem
Write a method that determines the mean (average) of the three scores passed to
it, and returns the letter value associated with that grade.
Tested values are all between 0 and 100. There is no need to check for negative
values or values greater than 100. 
Input: three integers
Output: a single-letter string

# Examples:
get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"

# Data Structures:
Input: 3 integers
Output: string

# Algorithm:
Calculate the mean of the three integers.
Compare the mean with the different letter values, and return the appropriate
one.
=end

def get_grade(score1, score2, score3)
  avg_score = (score1 + score2 + score3) / 3
  case avg_score
  when 90..100 then 'A'
  when 80...90 then 'B'
  when 70...80 then 'C'
  when 60...70 then 'D'
  else              'F'
  end
end

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"