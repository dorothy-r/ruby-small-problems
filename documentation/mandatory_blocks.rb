# The `Array#bsearch` method is used to search ordered Arrays
# more quickly than #find and #select can.
# How would you search the following array to find the first 
# element whose value exceeds 8?

a = [1, 4, 8, 11, 15, 19]

puts a.bsearch { |elem| elem > 8 }

# Documentation here:
# https://docs.ruby-lang.org/en/3.0.0/Array.html#method-i-bsearch