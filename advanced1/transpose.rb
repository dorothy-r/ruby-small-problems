=begin
# Problem:
A 3x3 matrix can be represented by an Array of Arrays in which the main Array
and each of the sub-Arrays has 3 elements.
The transpose of e 3x3 matrix is the matrix that results from exchanging the
columns and rows of the original matrix.
Write a method that takes a 3x3 matrix in Array of Arrays format and returns
the transpose of the original matrix. Note that there is an `Array#transpose`
method that does this--you may not use it for this exercise. You also are not
allowed to use the `Matrix` class from the standard library. Your task is to
do this yourself.
You must produce a new matrix and leave the original matrix unchanged.

# Example:
matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

# Data Structures:
Input: a nested array
Output: a new nested array

# Algorithm:
Create the return array of arrays.
Iterate over the original array.
  Iterate over each sub-array.
    Push the first element to the first sub-array in the return array,
    the seceond element to the second sub-array,
    and the third to the third sub-array.
Return the new array.
=end

# My solution
def transpose(matrix)
  new_matrix = [[],[],[]]
  matrix.each do |subarray|
    subarray.each_with_index do |element, index|
      new_matrix[index] << element
    end
  end
  new_matrix
end

# LS solution
def transpose(matrix)
  result = []
  (0..2).each do |column_index|
    new_row = (0..2).map { |row_index| matrix[row_index][column_index] }
    result << new_row
  end
  result
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]