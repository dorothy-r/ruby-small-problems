=begin

# Problem:
Create a method that takes 2 arguments, an array and a hash. The array will
contain 2 or more elements that, when combined with adjoining spaces, will
produce a person's name. The hash will contain two keys, :title and :occupation,
and the appropriate values. Your method should return a greeting that uses the
person's full name, and mentions the person's title and occupation.
Input: an array and a hash
Output: a string that uses the elements of the array and hash. 

# Example:
greeting(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> Hello, John Q Doe! Nice to have a Master Plumber around.

# Data Structures:
Input: array, hash
Output: string
None needed as an intermediate step

# Algorithm
Use the appropriate collection reference methods to access the elements.
Use string interpolation to put them in the greeting.
=end

def greetings(name_array, job_hash)
  full_name = name_array.join(' ')
  job_title = job_hash.values.join(' ')
  "Hello, #{full_name}! Nice to have a #{job_title} around."
end

puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
