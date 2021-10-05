What will the following code print, and why? Don't run the code until you have tried to answer.

```
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2
```

```
Moe
Larry
CURLY
SHEMP
Harpo
CHICO
Groucho
Zeppo
```

The values from array1 are appended to array2 in the first each loop. The `<<` method passes references to each object in array1 into array2. That is, the variables array1[i] and array2[i] are pointing to the same object.
Using the mutating method upcase! on each item that meets a certain condition in array1(the second each loop) permanently changes those objects.
Since the items in array2 are referring to those same objects, the changes appear in array2 as well.

Further Exploration:
How can this feature of Ruby get you in trouble? How can you avoid it?
If you forget that the items in the two arrays are pointing to the same objects, you can easily get into trouble with mutating methods. You may only want to change one array, but will end up changing both.
One way to avoid it is to use duplicated values when pushing items from array2 into array1:

```
array1.each { |value| array2 << value.dup }
```
