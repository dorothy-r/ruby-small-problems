You are given a method named `spin_me` that takes a string as an argument and returns a string that contains the same words, but with each word's characters reversed.
Given the method's implementation, will the returned string be the same object as the one passed in as an argument or a different object?

```ruby
def spin_me(str)
  str.split.each do|word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world")
```

The returned string will be a different object than the one passed in. `String#split` returns an array. The methods that follow (each, join) are performed on that array, and result in a new string being returned by the method.
The array is mutated by the `reverse!` method used within the block following `each`. And it is this array that is joined together to create a new string.
However, we have been working with a new object ever since the original string was split into an array.
