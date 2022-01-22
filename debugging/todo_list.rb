=begin
We wrote a method for moving a given number of elements from one array to
another. We decide to test it on our todo list, but invoking `move` on line 11
results in a `SystemStackError`. What does this error mean and why does it
happen?
=end

def move(n, from_array, to_array)
  # to_array << from_array.shift
  # move(n -1, from_array, to_array) this will recurse infinitely, until we get
  #                                  a stack overflow. better to just iterate
  # n.downto(1) do |num|
  #   to_array << from_array.shift
  # end
  # Or if you want to use recursion
  return if n == 0

  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end



# Example
todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffe with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']

=begin
Further Exploration:
What happens if the length of the `from_array` is smaller than `n`?
It will pass `nil` values to the `to_array` for every additonal call to `move`
once the `from_array ` is empty.
We could prevent this by adding a second `return` condition:

def move(n, from_array, to_array)
  return if n == 0 || from_array.empty?
  to_array << from_array.shift
  move(n-1, from_array, to_array)
end

=end