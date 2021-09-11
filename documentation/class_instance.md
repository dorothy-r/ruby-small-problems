Locate the ruby documentation for methods `File::path` and `File#path`. How are they different?

`File::path` is a public class method. Its documentation is as follows:
path(path) -> string
Returns the string representation of the path

```
File.path("/dev/null")  #=> "/dev/null"
```

`File#path` is a public instance method. Its documentation is:
path -> filename
Returns the pathname used to create _file_ as a string. Does not normalize the name. The pathname may not point to the file corresponding to _file_. For instance, the pathname becomes void when the file has been moved or deleted.

```
File.new("testfile").path #=> "testfile"
```

The main difference to note is that class methods are called on the class (in this case `File`), while instance methods are called on objects (in this case, an object of the `File` class.)

The documentation for both methods is found here:
https://docs.ruby-lang.org/en/3.0.0/File.html
