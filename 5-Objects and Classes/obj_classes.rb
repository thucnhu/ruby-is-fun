# Class definition
class Car
   @@no_of_wheels = 4

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

car1 = Car.new("Ford", "black")
car2 = Car.new("BMW", "white")
puts car1.getModel()
puts Car.class_variable_get(:@@no_of_wheels) # get class variable
puts car1.equal?(car2) # compare objects
puts car1.to_s

car1.setModel("Fiesta")
puts car1.getModel()


# Access control
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


# Overloading
class Test
    def self.sum(a,b)
        puts(a+b)
    end

    def self.sum(a,b,c)
        puts(a+b+c)
    end
end

Test.sum(1, 2, 7)


# Multiple inheritance using mixins
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