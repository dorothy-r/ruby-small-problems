=begin
# Problem: 
Modify your `transpose` method from the previous exercise so it works
with any matrix with at least 1 row and 1 column.

# Examples: 
transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
transpose([[1]]) == [[1]]

# Data Structures:
input: a matrix (nested array)
output: a matrix (nested array) with the elements transposed

# Algorithm:
Determine the size of the subarrays of the matrix (call it `n` for now)
Create the return array of arrays, including `n` arrays.
Iterate over the original array.
  Iterate over each sub-array.
    Push the first element to the first sub-array in the return array,
    the seceond element to the second sub-array,
    and the third to the third sub-array, etc...
Return the new array.
=end

# My solution
def transpose(matrix)
  cols = matrix[0].size
  new_matrix = []
  cols.times { new_matrix << [] }
  matrix.each do |row|
    row.each_with_index do |element, index|
      new_matrix[index] << element
    end
  end
  new_matrix
end

# My attempt with LS's `transpose` method
def transpose(matrix)
  result = []
  (0...matrix[0].size).each do |column_index|
    new_row = (0...matrix.size).map { |row_index| matrix[row_index][column_index] }
    result << new_row
  end
  result
end

# LS Solution
def transpose(matrix)
  result = []
  number_of_rows = matrix.size
  number_of_columns = matrix.first.size
  (0...number_of_columns).each do |column_index|
    new_row = (0...number_of_rows).map { |row_index| matrix[row_index][column_index] }
    result << new_row
  end
  result
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]