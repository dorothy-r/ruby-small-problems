=begin
# Problem: Write a program that reads the content of a text file and then prints
the longest sentence in the file based on number of words. Sentences may end
with perios, exclamation points, or question marks. Any sequence of characters
that are not spaces or sentence-ending characters should be treated as a word.
You should also print the number of words in the longest sentence.

# Example: 
Input is a section of the Gettysburg address.
Output: It is rather for us to be here dedicated to the great task remaining
before us -- that from these honored dead we take increased devotion to that 
cause for which they gave the last full measure of devotion -- that we here 
highly resolve that these dead shall not have died in vain -- that this nation, 
under God, shall have a new birthof freedom -- and that government of the 
people, by the people, for the people, shall not perish from the earth.
86 words.

# Data Structures:
Input: txt file
Should split it into an array of sentences.
And then further split each sentence into an array of words?
Output: Print a string (the longest sentence and its word count).

# Algorithm:
Read the text file.
Split it according to sentence-ending characters.
Iterate over the resulting array of sentences, splitting those into words,
and counting the words.
Find the longest sentence. 
Print it to the screen, as well as the number of words it contains.
=end

# My Solution
def find_longest(txt_file)
  file = File.open(txt_file)
  text = file.read
  sentences = text.split(/\.|\?|!/)
  word_counts = sentences.map { |sentence| sentence.split.size }
  longest_number = word_counts.max
  longest_index = word_counts.index(longest_number)
  longest_sentence = sentences[longest_index]
  puts "The longest sentence is: "
  puts longest_sentence
  puts "It has #{longest_number} words."
end

find_longest("frankenstein.txt")

# LS Solution
text = File.read('sample_text.txt')
sentences = text.split(/\.|\?|!/)
largest_sentence = sentences.max_by { |sentence| sentence.split.size }
largest_sentence = largest_sentence.strip
number_of_words = largest_sentence.split.size

puts "#{largest_sentence}"
puts "Containing #{number_of_words} words"
  
