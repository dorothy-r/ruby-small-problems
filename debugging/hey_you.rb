=begin
`String#upcase!` is a destructive method, so why does this code print `HEY you`
instead of `HEY YOU`?
Modify the code so that it produces the expected output.
=end

def shout_out_to(name)
  # name.chars.each { |c| c.upcase! }
  # `name.chars` returns an array. `each` iterates over that array and mutates
  # each element in the array. This does not affect the string referenced by
  # `name`, though. We can join the characters back together and reassign `name`
  # to that string. Or just reassign `name` to `name.upcase`
  name = name.chars.each { |c| c.upcase! }.join #if you really want to use `chars`
  # or, simpler:
  name = name.upcase

  puts 'HEY ' + name
end

shout_out_to('you')