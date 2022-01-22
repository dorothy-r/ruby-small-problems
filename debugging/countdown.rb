# Our countdown to launch isn't behaving as expected. Why? Change the code so
# that our program successfully counts down from 10 to 1.

# def decrease(counter)
#   counter -=1  # This reassigns counter; it does not mutate it, and does not
#                # affect the value of the local variable `counter`
# end

# counter = 10

# 10.times do
#   puts counter
#   counter = decrease(counter) # We need to capture the return value of the
#                               # method by reassigning the local variable here.
# end

# puts 'LAUNCH!'


# Further Exploration:
# We specify `10` two times, which looks a bit redundant. Can you refactor the
# code to specify it only once?

def decrease(counter)
  counter -1
end

counter = 10

while counter > 0
  puts counter
  counter = decrease(counter)
end

puts "LAUNCH!"