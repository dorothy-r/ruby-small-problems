# What does this code print?

5.step(to: 10, by: 3) { |value| puts value }

# 5 
# 8

# Interesting to note: keyword arguments are symbols.
# (Here, `:to` and `:by`)