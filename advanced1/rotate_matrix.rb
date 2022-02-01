=begin
# Problem:
A 90-degree rotation of a matrix produces a new matrix in which each side of the
matrix is rotated clockwise by 90 degrees.
Write a method that takes an arbitrary matrix and rotates it 90 degrees.

In a 3x3 matrix, the elements would move from:
[0][0] to [0][2]
[0][1] to [1][2]
[0][2] to [2][2]
[1][0] to [0][1]
[1][1] to [1][1]
[1][2] to [2][1]
[2][0] to [0][0]
[2][1] to [1][0]
[2][2] to [2][0]

In a 4x2 matrix, the elements would move from:
[0][0] to [0][1]
[0][1] to [1][1]
[0][2] to [2][1]
[0][3] to [3][1]
[1][0] to [0][0]
[1][1] to [1][0]
[1][2] to [2][0]
[1][3] to [3][0]



# Examples:
matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2

# Data Structures:
Input: a matrix (an array of same-sized arrays)
Output: a matrix, with the elements 'rotated' 90 degrees

# Algorithm:
For a 3x3 matrix:
Iterate over the original matrix, row by row
  Each element's column number becomes its row number. 
  Its new column number is the opposite of its row number (i.e. row 0 becomes
  column 2). 

=end

# My solution
def rotate90(matrix)
  orig_rows = matrix.size - 1
  orig_cols = matrix.first.size - 1
  rotated_matrix = []
  0.upto(orig_cols) do |col_ind|
    new_row = orig_rows.downto(0).map { |row_ind| matrix[row_ind][col_ind]}
    rotated_matrix << new_row
  end
  rotated_matrix
end

# LS solution
def rotate90(matrix)
  result = []
  number_of_rows = matrix.size
  number_of_columns = matrix.first.size
  (0...number_of_columns).each do |column_index|
    new_row = (0...number_of_rows).map do |row_index|
      matrix[row_index][column_index]
    end
    result << new_row.reverse
  end
  result
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

p new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2