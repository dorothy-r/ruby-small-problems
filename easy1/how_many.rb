# Write a method that counts the number of occurences of each element in a 
# given array. The words in the array are case-sensitive. Once counted, print
# each element alongside the number of occurences.

# Problem:
# Input: an array of strings
# Output: each element of the array alongside its number of occurences
# Words in the array are case sensitive
# Take an array of strings. Count the occurence of each. Store that number 
# alongside the array element.

# Examples:
# Input: ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 
# 'motorcycle', 'car', 'truck']
# Output: car => 4
#         truck => 3
#         SUV => 1
#         motorcycle => 2

# Data Structures:
# Input is an array. 
# Create a hash with array elements (keys) and their occurences (values)

# Algorithm:
# Create an empty hash
# Iterate over the array. 
# If the current element is not a hash key, add it and set its count to 0.
# If the current element is a hash key, increment its count.
# After iterating over all of the elements, print the hash contents to the screen.

# My Solution
def count_occurrences(arr)
  elem_count = {}
  arr.each do |element|
    if elem_count.has_key?(element)
      elem_count[element] += 1
    else
      elem_count[element] = 1
    end
  end
  elem_count.each do | elem, count |
    puts "#{elem} => #{count}"
  end
end

# LS Solution
def count_occurrences(array)
  occurrences = {}
  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end
  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)