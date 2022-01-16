=begin
# Problem:
Write a method that does a bubble sort of an array.
A bubble sort makes multiple iterations through an Array. On each pass, each
pair of consecutive elements is compared. If the first is greater than the
second, then the two elements are swapped. This is repeated until a complete
pass is made without performing any swaps.
The method should sort the Array "in-place", that is, it should mutate the
Array passed as an argument. The Array contains at least 2 elements.

# Examples:
array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

# Data Structures:
Input: array
Output: the same array

# Algorithm:
Take the input array. 
Create a swapped variable that toggles  `true`\`false`
Iterate over the array, comparing the current element with the one after, and swap
them if the second one is smaller than the first. Use destructive methods.
When swapping, set swapped to true
We will need to repeat the above processes until any_swaps? is still `false`
after going through the array.
Then return the sorted array.
=end

# My Solution
def pass_and_swap(array, swapped)
  (1...array.size).each do |ind|
    if array[ind - 1] > array[ind]
      array[ind], array[ind - 1] = array[ind - 1], array[ind]
      swapped = true
    end
  end
  swapped
end

def bubble_sort!(array)
  swapped = ''
  while swapped
    swapped = false
    swapped = pass_and_swap(array, swapped)
  end
  array
end

# LS Solution
def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      next if array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index -1]
      swapped = true
    end

    break unless swapped
  end
  nil
end

array = [5, 3]
p bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)