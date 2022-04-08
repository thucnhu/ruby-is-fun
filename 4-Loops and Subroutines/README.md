# Loops and Subroutines

## Types of loops

### While-do loops

```
x = 1
while x < 5:
    puts x
    x += 1
end
```

Output:

```
1
2
3
4
```

### For loops

One way to use for loops in Ruby is to iterate over a range of numbers (as in any other languages).

```
for x in 1..3
    puts x
end
```

Output:

```
1
2
3
```

Another way to use for loops is to iterate over an array.

```
arr = [1, 2, 3, 4, 5]
for x in arr
    puts x
end
```

Output:

```
1
2
3
4
5
```

### Do-while loops

```
x = 1
loop do
    puts x
    x += 1
    break if x > 5
end
```

Output:

```
1
2
3
4
5
```

### Until loops

Until loops executes until the condition is true. So the condition in until loop is opposite to the one in while loop.

```
x = 1
until x > 5
    puts x
    x += 1
end
```

Output:

```
1
2
3
4
5
```

## Functions

```
def func_name(value1, value1)
   # some code here
end
```

You can set default values or parameters, which will be used when no parameters are passed in when the function is called.

```
def func_name(value1 = 1, value2 = 2)
   # some code here
end
```

Below is two ways you can call a function:

```
func_name 1, 2
func_name(1, 2)
```

You can also pass parameters of different types to a function.

```
def add_to_arr(value, arr)
   arr.push(value)
end

arr = [1, 2]
add_to_arr(3, arr)
puts arr
```

In Ruby, you cannot call a method before it is defined. The codes below will cause an error because `func2` is called before it is defined:

```
def func1
   func2
end

~~func1~~

def func2
   puts "Hello"
end
```

It should be handled this way:

```
def func1
   func2
end

def func2
   puts "Hello"
end

func1
```

Ruby does not support returning multiple values/objects from a function. You can return an array of values in Ruby as it is a single object.

## Recursive functions

```
def factorial(n)
   if n == 0
      1
   else
      n * factorial(n-1)
   end
end

factorial(5)
```

## Pass-by value

Ruby is strictly pass-by-value, but the values it passes are references. Therefore, any operations that affect the object will be reflected in the original object. However, as soon as you assign a new object to the variable passed in, it no longer references the original object. Let's take a look at an example

```
str = "Hi"
def change_str1(str)
   str.replace("Bye")
end

change_str1(str)
puts str
```

Output:

```
Bye
```

The output here is `Bye` because the string object `str` is passed in as a reference to the original object.

```
str = "Hi"
def change_str2(str)
   str = "Bye"
end

change_str2(str)
puts str
```

Output:

```
Hi
```

Unlike the previous example, the output here is `Hi` because the string object `str` is assigned a new object, which makes it detached from the original object. Therefore, the original object remains the same.

## References

[1] https://www.geeksforgeeks.org/ruby-loops-for-while-do-while-until/

[2] https://www.tutorialspoint.com/ruby/ruby_methods.htm

[3] https://robertheaton.com/2014/07/22/is-ruby-pass-by-reference-or-pass-by-value/

[4] https://stackoverflow.com/questions/1872110/is-ruby-pass-by-reference-or-by-value
