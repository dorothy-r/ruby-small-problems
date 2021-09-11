Consider the following method and a call to that method:

```
def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)
```

Use the ruby documentation to determine what this code will print.

```
[4, 5, 3, 6]
```

See: https://docs.ruby-lang.org/en/3.0.0/doc/syntax/calling_methods_rdoc.html#label-Default+Positional+Arguments

Ruby _does_ allow default values to appear in the middle of positional arguments. The positional arguments are filled first, then the default arguments are filled with any other supplied values (going left to right), and finally default values are applied to anything remaining.
_Don't do this in your code!_
