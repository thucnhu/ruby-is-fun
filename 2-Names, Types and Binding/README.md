# Names, Types and Binding

## Keywords

Below are the keywords that are used in Ruby. They cannot be used as variable names.

![Ruby keywords](https://res.cloudinary.com/dw5ii3leu/image/upload/v1646308700/Ruby%20is%20fun/keywords-ruby_deaect.png)

## Naming Requirements and Conventions

-  Ruby is a case sensitive language.
-  Variable names must start with a lowercase letter, or else they are considered constant.
-  A variable name can contain letters, numbers, and underscores, but cannot start with a number.
-  A variable name cannot contain spaces.
-  Variable names should be written in snake_case (this is community standard).

## Ruby is dynamically typed

It means that the variable type is not declared when the variable is created and can be changed later.

## Ruby is strongly typed

```
a = 1
b = "1"
puts a + b # TypeError: can't convert String into Integer

a = 1.0
b = "1"
puts a + b # TypeError: can't convert String into Float
```

## Explicit vs Implicit Conversion

Ruby has both explicit and implicit conversion, but it is implicit in declaration.

### Explicit Conversion

```
# From string to integer
a = "1"
b = 2
puts a.to_i + b

# From integer to string
a = 1
puts "Ben is " a.to_s " years old"
```

### Implicit Conversion

```
# From integer to float
a = 1
b = 2.0
puts a + b
```

If you accidentally use implicit conversion on any pair of types that is not supported, Ruby will raise an error, for example `no implicit conversion of Symbol into String (TypeError)`.

## Mutable vs Immutable data types

### Mutable

-  Strings
-  Arrays
-  Hashes

### Immutable

-  Integers
-  Floats
-  Booleans
-  Symbols

## Operators

-  Integers and Floats can be used with all math operators.
-  Non-primitive variables can be checked for equality in value with the `==` operator.
-  To check for equality in `object_id` use the `.equal?` method.

```
a = 1
b = 1
puts a == b # true
puts a.equal?(b) # true, because primitive variables with the same value have the same object_id

x = "Hello"
y = "Hello"
puts x == y # true
puts x.equal?(y) # false, because strings are objects and have different object_ids
```

-  Method `.eq?` returns true if both arguments have the same value and data type.

```
puts 1.eq?(1.0) # false
```

## Addresses and Binding

In Ruby, a variable name is bound to a memory address, and different variables with the same value are bound to the same memory reference. This concept is called name binding.

```
x = 1
y = 1
puts x.object_id == y.object_id # true because x and y are bound to the same object

arr1 = [1, 2, 3]
arr2 = arr1
arr1.append(4)
puts arr2 # [1, 2, 3, 4]
```

`arr1.append(4)` does not rebind `arr1`, but simply mutates `[1, 2, 3]`, which is also bound to `arr2`

## Symbols - a built-in data type in Ruby

Symbols are light-weight strings, preceded by a colon ":". They are used to reference variables and constants, and can be thought of as immutable strings. Since symbols are immutable, those that reference the same internal values also have the same `object_id`. Unlike strings, which are repeatedly created and destroyed when the same object could have been used in their place, symbols take up much less space and have better performance than strings.

```
student = {
   :name => "Ben",
   :age => 25,
   :courses => ["Math", "English"]
}
```

## References

[1] https://www.studytonight.com/ruby/reserved-keywords-in-ruby

[2] https://zetcode.com/lang/rubytutorial/variables/

[3] https://www.tutorialspoint.com/ruby/ruby_operators.htm

[4] https://blog.appsignal.com/2019/01/08/ruby-magic-bindings-and-lexical-scope.html

[5] https://medium.com/@lcriswell/ruby-symbols-vs-strings-248842529fd9#:~:text=Ruby%20symbols%20are%20defined%20as,something%20that%20cannot%20be%20changed.

[6] https://www.geeksforgeeks.org/ruby-data-types/
