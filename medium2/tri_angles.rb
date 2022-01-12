=begin
# Problem:
Write a method that takes the 3 angles of a triangle as arguments, and 
a symbol depending on whether the triangle is:
right - one angle of the triangle is a right angle
acute - all 3 angles of the triangle are less than 90 degrees
obtuse - one angle is greater than 90 degrees
invalid - the sum of the angless is not 180 degrees or any angle is <= 0
Assume the arguments are specified in degrees.

# Examples:
triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid

# Data Structures:
Input: 3 integers
Output: symbol
Storing the input in an array will make it easier to work with

# Algorithm:
Store the input in an array
Conditional:
invalid if the sum of the angles is != 180 or if any angle <= 0
right if the array includes 90
obtuse if the array includes any value > 90
otherwise, acute

=end

# My solution
def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]

  if angles.sum != 180 || angles.any? { |num| num <= 0 }
    :invalid
  elsif angles.include?(90)
    :right
  elsif angles.any? { |num| num > 90 }
    :obtuse
  else
    :acute
  end
end

# LS solution
def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]

  case
  when angles.reduce(:+) != 180, angles.include?(0)
    :invalid
  when angles.include?(90)
    :right
  when angles.all? { |angle| angle < 90 }
    :acute
  else
    :obtuse
end



p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid