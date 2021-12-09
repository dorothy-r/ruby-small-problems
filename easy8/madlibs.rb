=begin
Create a simple mid-lib program that prompts for a noun, a verb, an adverb, and
and adjective and injects those into a story that you create.

# Problem:
Inputs: various strings, supplied by user
Output: a string

# Example:
Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!

# Data Structure:
None needed, really? Could do a hash, especially for a longer one.
And maybe use an array to populate the hash?

# Algorithm:
Create a hash to store user responses. 
Ask user for response. Store in the hash. 
Print out the madlib with the user responses injected into it.
=end

madlibs = {}
blanks = ["noun", "verb", "adjective", "adverb"]

blanks.each do |blank|
  print "Enter your #{blank}: "
  word = gets.chomp
  madlibs[blank] = word
end

sentence1 = "Do you #{madlibs['verb']} your #{madlibs['adjective']} #{madlibs['noun']} #{madlibs['adverb']}? That's hilarious!"
sentence2 = "The #{madlibs['adjective']} #{madlibs['noun']} #{madlibs['verb']}s #{madlibs['adverb']} over the lazy dog."
sentence3 = "The #{madlibs['noun']} #{madlibs['adverb']} #{madlibs['verb']}s up #{madlibs['adjective']} Joe's turtle."

puts [sentence1, sentence2, sentence3].sample