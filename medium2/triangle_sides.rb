=begin
# Problem:
Write a method that takes the lengths of the sides of a triangle as arguments,
and returns a symbol :equilateral, :isoceles, :scalene, or :invalid depending
on whether the triangle is:
equilateral (all 3 sides are of equal length)
isosceles (2 sides are of equal length)
scalene (all 3 sides are of different length)
invalid (the sum of the two shortest sides are not greater than the longest
  side, or one or more sides is not greater than 0)

# Examples:
triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid

# Data Structures:
Input: 3 numbers (integers or floats)
Output: a symbol
Maybe use an array to store and sort side lengths

# Algorithm:
Create an array with the 3 sides and sort it.
Conditional:
If any side is <= 0, or if the two shorter sides are <= the longest: invalid
If the first and last elements in the array are equal: equilateral
If any other two elements are equal: isosceles
Otherwise: scalene
=end

# My solution
def triangle(side1, side2, side3)
  sorted_sides = [side1, side2, side3].sort
  if sorted_sides.any? { |side| side <= 0 } || 
    (sorted_sides[0] + sorted_sides[1]) <= sorted_sides[2]
    :invalid
  elsif sorted_sides[0] == sorted_sides[2]
    :equilateral
  elsif sorted_sides[0] == sorted_sides[1] || sorted_sides[1] == sorted_sides[2]
    :isosceles
  else
    :scalene
  end
end

# LS Solution
def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  largest_side = sides.max

  case
  when 2 * largest_side > sides.reduce(:+), sides.include?(0)
    :invalid
  when side1 == side2 == side3
    :equilateral
  when side1 == side2 || side1 == side3 || side2 == side3
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid