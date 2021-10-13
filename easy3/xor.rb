=begin
Write a function named `xor` that takes two arguments, and returns `true` if
exactly one of its arguments is truthy, `false` otherwise. Note that we are
looking for a boolean result instead of a truthy/falsy value as returned by
`||` and `&&`.

# Problem:
Input: two arguments
Output: a boolean value
Return true if only one argument is truthy, and false otherwise.

# Examples:
xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false

# Data structures
Compare arguments, get boolean results

# Algorithm
Get the boolean result of the two arguments. If they are equal, return false;
if not return true.
=end

def xor?(arg1, arg2)
  !(!!arg1 == !!arg2)
end

puts xor?(5.even?, 4.even?)
puts xor?(5.odd?, 4.odd?)
puts xor?(5.odd?, 4.even?)
puts xor?(5.even?, 4.odd?)

# LS Solution
def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

# Shorter version
def xor?(value1, value2)
  !!((value1 && !value2) || (value2 && !value1))
end