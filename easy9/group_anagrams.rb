words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

# My solution          
all_anagrams = []

words.each do |word1|
  anagrams = words.select do |word2|
    word1.chars.sort == word2.chars.sort
  end
  all_anagrams << anagrams unless all_anagrams.include?(anagrams)
end

all_anagrams.each { |list| p list }

# LS solution
result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each_value do |v|
  puts "------"
  p v
end