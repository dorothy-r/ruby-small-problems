=begin
The `reverse_sentence` method should return a new string with the words of its
argument in reverse order, without using any of Ruby's built-in `reverse`
methods. However, the code below raises an error. Change it so that it behaves
as expected.
=end

def reverse_sentence(sentence)
  words = sentence.split(' ')
  reverse_words = []

  i = 0
  while i < words.length
    # reversed_words = words[i] + reverse_words  This is trying to concatenate a
    #                                            string and an array.
    reverse_words.unshift(words[i])
    # OR
    reverse_words = [words[i]] + reverse_words
    i += 1
  end

  reverse_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'