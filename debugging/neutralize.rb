=begin
We wrote a `neutralize` method that removes negative words from sentences.
However, it fails to remove all of them. What exactly happens?
=end

def neutralize(sentence)
  words = sentence.split(' ')
  # words.each do |word|
  #   words.delete(word) if negative?(word)
  # end

  # the above code modifies the `words` array while iterating over it, which
  # causes the unexpected behavior of not removing 'boring'.
  # Here's a version using `select`, which is more appropriate:
  # words.select! do |word|
  #   !negative?(word)
  # end

  # Or you can use each, with a new array
  # new_words = []
  # words.each do |word|
  #   words << new_words unless negative?(word)
  # end

  # new_words.join

  # Or use `reject!`
  words.reject! { |word| negative?(word) }

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.