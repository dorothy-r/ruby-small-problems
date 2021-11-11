=begin
Write a method that takes two Array arguments in which each Array contains a
list of numbers, and returns a new Array that contains the product of every
pair of numbers that can be formed between the elements of the two Arrays. The
results should be sorted by increasing value.
You may assume that neither argument is an empty Array. 

# Problem:
Input: two arrays of numbers
Output: a new array
The new array should contain the product of every pair of numbers that can be
formed between the two arrays, and should be sorted in increasing order.
Neither argument will be empty.

# Example:
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# Data Structures:
Input: two arrays
Output: one array
Should not need any intermediate data structures

# Algorithm:
Create an empty results array
Iterate through the first argument array:
  For each element, iterate through the second array and get the product.
  Add each product to the results array.
Sort the results array, and return it.

=end

# My solution
def multiply_all_pairs(array1, array2)
  results = []
  array1.each do |num1|
    results << array2.map { |num2| num1 * num2 }
  end
  results.flatten.sort
end

# LS solution 1
def multiply_all_pairs(array_1, array_2)
  products = []
  array_1.each do |item_1|
    array_2.each do |item_2|
      products << item_1 * item_2
    end
  end
  products.sort
end

# LS solution 2
def multiply_all_pairs(array_1, array_2)
  array_1.product(array_2).map { |num1, num2| num1 * num2 }.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]