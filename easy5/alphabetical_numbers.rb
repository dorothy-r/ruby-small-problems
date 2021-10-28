=begin
Write a method that takes an Array of Integers between 0 and 19, and returns an
Array of those Integers sorted based on the English words for each number:
zero, one ... eighteen, nineteen

# Problem
Input: an array of integers between 0 and 19
Output: an array of the same integers sorted in (English) alphabetical order
Need to convert each number to its equivalent word, sort those in alphabetical
order, and then convert them back to numbers

# Example:
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

# Data Structures:
Input: array
Output: array
Using a hash or array to store the integer to words conversions could help

# Algorithm
Take the array
Convert the numbers to their equivalent words
Sort the words alphabetically
Convert them back to numbers
Return array

=end

# My solution
  NUMBER_WORDS = [
    'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight',
    'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen',
    'sixteen', 'seventeen', 'eighteen', 'nineteen'
  ]

def alphabetic_number_sort(array)
  word_array = array.map { |num| NUMBER_WORDS[num] }
  word_array.sort.map { |word| NUMBER_WORDS.index(word) }
end

# LS Solution
NUMBER_WORDS = %w(zero one two three four
                  five six seven eight nine
                  ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }
end

puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]