# What do each of these `puts` statements output?

a = %w(a b c d e)
puts a.fetch(7) #=> IndexError
puts a.fetch(7, 'beats me') #=> 'beats me'
puts a.fetch(7) { |index| index**2 } #=> 49

# See: https://docs.ruby-lang.org/en/3.0.0/Array.html#method-i-fetch