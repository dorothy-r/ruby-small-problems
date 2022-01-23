=begin
# Problem:
Make a madlibs program that reads in some text from a text file that you have
created, and then plugs in a selection of randomized nouns, verbs, adjectives,
and adverbs into that text and prints it. You can build your lists of nouns,
verbs, adjectives, and adverbs directly into your program, but the text data
should come from a faile or other external source. Your program should read
this text, and for each line, it should place random words of the appropriate
types into the text, and print the result.

# Example:
Text:
The %{adjective} brown %{noun} %{adverb}
%{verb} the %{adjective} yellow
%{noun}, who %{adverb} %{verb} his
%{noun} and looks around.

Ouput:
The sleepy brown cat noisily
licks the sleepy yellow
dog, who lazily licks his
tail and looks around.

# Data Structures:
Input: a text file
Output: text printed to the screen.
Also, arrays with replacement words

# Algorithm:
Read the text file, and assign its contents to a variable.
Iterate over the words from the text.
When encountering a 'blank', select a random word from the appropriate array
Replace the 'blank' with the word
When finished, print out the new text
=end

# My solution
REPLACEMENTS = { adjectives: %w(quick lazy sleepy ugly),
                 nouns: %w(fox dog head leg),
                 verbs: %w(jumps lifts bites licks),
                 adverbs: %w(easily lazily noisily excitedly)
}

madlibs_text = File.readlines("madlibs.txt")


madlibs_text.each do |line|
  line.gsub!("%{adjective}", REPLACEMENTS[:adjectives].sample)
  line.gsub!("%{noun}", REPLACEMENTS[:nouns].sample)
  line.gsub!("%{verb}", REPLACEMENTS[:verbs].sample)
  line.gsub!("%{adverb}", REPLACEMENTS[:adverbs].sample)
end

puts madlibs_text

# LS Solution
ADJECTIVES = %w(quick lazy sleepy ugly).freeze
NOUNS      = %w(fox dog head leg cat tail).freeze
VERBS      = %w(spins bites licks hurdles).freeze
ADVERBS    = %w(easily lazily noisily excitedly).freeze

File.open('madlibs.txt') do |file|
  file.each do|line|
    puts format(line, noun:      NOUNS.sample,
                      verb:      VERBS.sample,
                      adjective: ADJECTIVES.sample,
                      adverb:    ADVERBS.sample)
  end
end
