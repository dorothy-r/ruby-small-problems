Assume you have the following code:

```
require 'date'

puts Date.civil
puts Date.civil(2016)
puts Date.civil(2016, 5)
puts Date.civil(2016, 5, 13)
```

What will each of the 4 `puts` statements print?

```
-4712-01-01
2016-01-01
2016-05-01
2016-05-13
```

Documentation on `Date` class can be found here:
https://docs.ruby-lang.org/en/3.0.0/Date.html

Specifically note the default values for each optional parameter, to understand this exercise.
