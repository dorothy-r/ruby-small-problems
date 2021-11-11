=begin
Modify the method from the previous exercise so it ignores non-alphabetic
characters when determining whether it should uppercase or lowercase each
letter. The non-alphabetic characters should still be included in the return
value; they just don't count when toggling the desired case.

# Problem:
Input: a string
Output: a new string
The new string should once again alternate upper and lowercase letters.
This time, non-alphabetic characterd don't count when toggling the case.

# Example:
staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# Data Structures:
Input: string
Output: string
An array of characters could be useful in the intermediate steps.

# Algorithm:
Convert the string into an array.
Create a toggle variable
Iterate through the array:
  Capitalize every other character, using the toggle variable.
  Skip the non-alphabetic characters.
Join the array back into a string, and return it.

=end

# My solution
def staggered_case(string)
  result = ''
  to_caps = true
  string.chars.each do |char|
    unless char =~ /[a-z]/i
      result << char
      next
    end
    if to_caps
      result << char.upcase
    else
      result << char.downcase
    end
    to_caps = !to_caps
  end
  result
end

# LS solution
def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[a-z]/i
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end

puts staggered_case('I Love Launch School!') # == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'