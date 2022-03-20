# Selection Control Structures

## Boolean values

Boolean values in Ruby are `true` and `false`.

## Conditional statements

The conditional statements in Ruby are `if/elsif/else`, `case/when/else` and `unless/else`.

```
if x == 1
  puts "x is 1"
elsif x == 2
  puts "x is 2"
else
  puts "x is neither 1 nor 2"
end
```

```
def get_day_name(day)
   day_name = ""

   case day
   when "mon"
      day_name = "Monday"
   when "tue"
      day_name = "Tuesday"
   when "wed"
      day_name = "Wednesday"
   when "thu"
      day_name = "Thursday"
   when "fri"
      day_name = "Friday"
   when "sat"
      day_name = "Saturday"
   when "sun"
      day_name = "Sunday"
   else
      day_name = "Invalid abbreviation"
   end

   return day_name
end
```

```
# Unless statements execute the code if the condition is false. If the condition is true, the code block in the else clause is executed.
x = 1
unless x > 2
  puts "x is less than or equal to 2"
else
  puts "x is greater than 2"
end
# Result: x is less than or equal to 2
```

Code blocks under each condition are indented and delimited by the conditional statements.

# Short-circuit evaluation and Operator Precedence

Ruby uses short-circuit evaluation, which means when the first argument of an `AND` function evaluates to false, the second argument is not evaluated and the overall value must be false. Likewise, when the first argument of an `OR` function evaluates to true, the second argument is not evaluated and the overall value must be true.

The `AND` operator in Ruby is `&&` or `and`, `OR` operator is `||` or `or`. However, the precendece of `&&` `||` is different from `and` `or`. Let's take a look at an example:

```
result = true and false
result # => true

result = true && false
result # => false
```

The order in which Ruby operators are evaluated is as follows:

1. `&&`
2. =
3. `and`

So the above example would be evaluated as

```
((result = true) and false) # => true
(result = (true && false)) # => false
```

Therefore, it is recommended to use `&&` and `||` instead of `and` and `or` in Ruby.

## Dangling else problem

Ruby supports putting the `if` statement at the end of a line to solve the dangling else problem.

```
x = 3
puts "x is less than 3" if x <= 4
```

## Break and next

We can use `break` to exit `for` and `while` loop, but **not** the `case` statement. We can use `return` to exit the `case` statement.

```
x = 1

case x
when 1
   puts "x is 1"
   return
   puts "This will not be executed"
when 2
   puts "x is 2"
end
```

`next` has the same function as `continue` in other languages. However, using `next` in a `case` statement would throw an error.

# References

[1] https://www.tutorialspoint.com/ruby/ruby_if_else.htm
[2] https://www.youtube.com/watch?v=t_ispmWmdjY
[3] https://mixandgo.com/learn/ruby/boolean-operator-precedence
