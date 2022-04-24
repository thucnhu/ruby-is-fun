# Objects and Classes

Ruby is a pure object-oriented language and everything in Ruby is an object, even primitives such as numbers, booleans and strings. This chapter will cover the basic functionalities of objects and classes in Ruby.

Before that, let's take a look at different variable types in Ruby.

## Variable Types

-  **Local variables**: are variables that are defined inside a method and are accessible only inside that method. They begin with lowercase letters or an underscore \_.
-  **Instance variables**: are available to all methods in a class and are prefixed with an at sign @. They are used to store data that is unique to each instance of a class.
-  **Class variables**: are available accross different objects of the same class and are prefixed with two at signs @@. They are used to store data that is shared by all instances of a class.
-  **Global variables**: are variables that are defined outside of a method and are accessible from anywhere in the program. They are prefixed with a dollar sign $.

## Class Definition

A Ruby class, along with constructors and methods, can be defined using the following syntax:

```
class Car
   @@no_of_wheels = 4 # class variable

   # constructor
   def initialize(model, color)
      @model = model
      @color = color
   end

   # accessor methods
   def getModel
      @model
   end

   def getColor
      @color
   end

   # setter methods
   def setModel(model)
      @model = model
   end

   def setColor(color)
      @color = color
   end

   # class method
   def run
      puts "The car is running."
   end
end
```

## Object initialization and calling methods

```
# create a new object
car1 = Car.new("Ford", "black")
puts car1.getModel()
puts Car.class_variable_get(:@@no_of_wheels) # get class variable

car1.setModel("Fiesta")
puts car1.getModel()
```

# Access control

Ruby provides 3 levels of protection: private, protected and public.

-  **Private methods**: are methods that are only accessible from within the class.
-  **Protected methods**: are methods that are accessible from within the class and from any subclass of the class.
-  **Public methods**: are methods that are accessible from anywhere in the program.

Below is an example of how to use access control in Ruby.

```
class Box
   def initialize(w,h)
      @width, @height = w, h
   end

   # the default access is public
   def getWidth
      @width
   end

   def getHeight
      @height
   end

   def getArea
      getWidth() * getHeight()
   end

   # set private method
   private :getArea

   def getPerimeter
      2 * (@width + @height)
   end

   # set protected method
   protected :getPerimeter
end
```

## Inheritance

Below is an example of how to use inheritance in Ruby.

```
class BigBox < Box

   # add an additional method
   def printSize
      puts "Big box is #{getWidth()} X #{getHeight()}"
   end
end
```

In Ruby, you do not need to define a constructor for a subclass. It is automatically inherited from the superclass.

## Multiple Inheritance

Ruby does not support multiple inheritance. However, you can use mixins to achieve multiple inheritance. Mixins allow modules to access methods of one another using `include` method. Below is an example of Ruby mixins.

```
module Movable
   def move
      puts "I can move!"
   end
end

module Climbable
   def climb
      puts "I can climb!"
   end
end

class Animal
   include Movable
   include Climbable

   def speak
      puts "I can speak!"
   end
end

animal = Animal.new
animal.speak
animal.move
animal.climb
```

## Object class

It is the default root of all Ruby objects. `Object` inherits from `BasicObject`, which is the parent class of all classes in Ruby. Methods on `Object` are available to all objects, unless explicitly overridden, some of which are:

-  `object_id`: returns the unique object id for an object.
-  `instance_of?`: returns true if the object is an instance of the given class.
-  `eql?`: returns true if the object is equal to the given object.
-  `to_s`: returns a string representation of the object.

## Method overriding

You can also override methods in a subclass as shown in the following example:

```
class BigBox < Box

   # override method
   def getArea
      super() * 2
   end
end
```

## Method overloading

Method overloading is a feature of statically typed languages, wherein binding of methods takes place during compile time. However, since Ruby is a dynamically typed language, it does not support method overloading. Below is an example that would throw errors

```
class Test
    def self.sum(a,b)
        puts(a+b)
    end

    def self.sum(a,b,c)
        puts(a+b+c)
    end
end

Test.sum(1,2)
```

Output

```
`sum': wrong number of arguments (given 2, expected 3) (ArgumentError)
```

When the second method `sum` is defined with 3 arguments, it completely overrides the existing method. Therefore, the previous method is no longer accessible, and we can only call the new method.

```
class Test
    def self.sum(a,b)
        puts(a+b)
    end

    def self.sum(a,b,c)
        puts(a+b+c)
    end
end

Test.sum(1,2,7)
```

Output

```
10
```

## References

[1] https://www.tutorialspoint.com/ruby/ruby_object_oriented.htm

[2] https://stackoverflow.com/questions/39753594/how-do-i-access-class-variable

[3] https://ruby-doc.org/core-3.1.2/Object.html

[4] https://ruby-doc.org/core-3.1.1/BasicObject.html

[5] https://www.geeksforgeeks.org/method-overloading-in-ruby/
