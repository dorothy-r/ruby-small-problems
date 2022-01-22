=begin
Josh wants to print an array of numeric strings in reverse numerical order.
However, the output is wrong. Without removing any code, help Josh get the
expected otuput.
=end

arr = ["9", "8", "7", "10", "11"]
# p (arr.sort do |x, y|
#     y.to_i <=> x.to_i
#   end)

# Originally `arr.sort` was more strongly bound to `p` than to the `do..end`
# block. Adding parenthese changes this. Could also move the code to one line,
# between curly brackets:

p arr.sort { |x, y| y.to_i <=> x.to_i }