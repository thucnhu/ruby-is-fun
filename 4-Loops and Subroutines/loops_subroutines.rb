# while-do loop
puts "While-do loop"
x = 0
while x < 5
    puts x
    x += 1
end

# for loop
puts "For loop (with range)"
for x in 1..10
    puts x
end

puts "For loop (with array)"
arr = [1, 2, 3, 4, 5]
for x in arr
    puts x
end

# do-while loop
puts "Do-while loop"
x = 1
loop do
    puts x
    x += 1
    break if x > 10
end

# until loop
puts "Until loop"
x = 1
until x > 10
    puts x
    x += 1
end

# Functions
puts "Functions"
def add_to_arr(value, arr)
   arr.push(value)
end

arr = [1, 2]
add_to_arr(3, arr)
puts arr

# Order of functions: Ruby is late binding
def func1
   func2
end

def func2
   puts "Hello"
end

func1

# Recursive functions
puts "Recursive functions"
def factorial(n)
   if n == 0
      1
   else
      n * factorial(n-1)
   end
end

puts factorial(5)

# Pass-by value and pass-by-reference
puts "Pass-by value and pass-by-reference"
x = 1
def change_num(num)
   puts num.object_id
   num
end

change_num(x)
puts x # 1 (unchanged)
puts x.object_id # same object id

str = "Hi"
def change_str1(str)
   str.replace("Bye")
end

def change_str2(str)
   str = "Hello"
end

change_str1(str)
puts str # Bye
change_str2(str)
puts str # Bye (unchanged)
