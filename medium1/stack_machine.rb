=begin
A stack is a list of values that grows and shrinks dynamically. In Ruby, a
stack is easily implemented as an Array that just uses the `#push` and `#pop`
methods.
A stack-and-register programming language is a language that uses a stack of
values. Each operation in the language operates on a register, which can be
thought of as the current value. The register is not part of the stack.
Operations that require two values pop the topmost item from the stack (that is,
the operation removes the most recently pushed value from the stack), perform
the operation using the popped value and the register value, and then store the
result back in the register.
Write a method that implements a miniature stack-and-register-based programming
language that has the following commands:
- n: Place a value n in the "register". Do not modify the stack.
- PUSH: Push the register value on to the stack. Leave the value in the register.
- ADD: Pops a value from the stack and adds it to the register value, storing 
the result in the register.
- SUB: Pops a value from the stack and subtracts it from the register value, 
storing the result in the register.
- MULT: Pops a value from the stack and multiplies it by the register value, 
storing the result in the register.
- DIV: Pops a value from the stack and divides it into the register value, 
storing the integer result in the register.
- MOD: Pops a value from the stack and divides it into the register value, 
storing the integer remainder of the division in the register.
- POP: Remove the topmost item from the stack and place in register
- PRINT: Print the register value
All operations are integer operations (which is only important with DIV and MOD)

# Problem:
Create the above minilanguage.
Programs will be supplied via a string passed in as an argument.
All programs will be 'correct' (i.e. won't throw an error)
Initialize the register to 0
Input: a string
Output: an integer

# Examples:
minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)

# Data Structures:
Input: string
Output: integer
Will need to parse the input into an array.
Will also need to create the stack data structure for the language, and
a register.

# Algorithm:
Initialize the register to 0.
Initialize the stack as an empty array.
Split the input string into an array.
Iterate over the array, performing each command.
Write a function for each command?
To indicate what to do, use a long case statement? Or a hash?

=end


def minilang(program)
  register = 0
  stack = []
  instructions = program.split
  instructions.each do |step|
    case
    when is_number?(step) then register = step.to_i
    when step == "PUSH"   then stack.push(register)
    when step == "ADD"    then register += stack.pop
    when step == "SUB"    then register -= stack.pop
    when step == "MULT"   then register *= stack.pop
    when step == "DIV"    then register /= stack.pop
    when step == "MOD"    then register %= stack.pop
    when step == "POP"    then register = stack.pop
    when step == "PRINT"  then puts register
    end
  end
end

def is_number?(string)
  string.to_i.to_s == string
end

minilang('6 PUSH')