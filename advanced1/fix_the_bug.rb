# The following code:
def my_method(array)
  if array.empty?
    []
  elsif array.size > 1  # <-- added array.size > 1 after elsif
    array.map do|value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

# is expected to print
# []
# [21]
# [9, 16]
# [25, 36, 49]

# However, it does not. Find and fix the bug, then explain why the buggy
# program printed the results it did.


# When the test expression is not included after `elsif`, Ruby looks for it on
# the next line, and interprets the `array.map` method call as the test expression.
# This returns a truthy value, so Ruby then goes to execute the 'then' expression.
# There is no expression before the next clause, the `else` clause, so the
# conditional returns `nil`.