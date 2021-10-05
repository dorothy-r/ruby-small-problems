What does this code print out?

```
name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name
```

```
Alice
Bob
```

What does this code print out?

```
name = 'Bob'
save_name = name
name.upcase!
puts name, save_name
```

```
BOB
BOB
```

Can you explain these results?

In the second example, name is pointing to the String object 'Bob.' When we assign save_name to the name, the two variable names are now pointing to the same object.
When we call the mutating method upcase! on name, it changes the object that both name and save_name are pointing to. It is now 'BOB'.
In the first example, reassigning the variable name to 'Alice' causes it to point to a new object. Variable reassignment is non-mutating. So save_name continues to point to the String object w/ the value 'Bob' while name now points to the object w/ the value 'Alice'.
