# Ease Task - 1
class Car
  attr_accessor :make, :model

  def initialize(make, model)
    @make = make
    @model = model
  end

  def disply_details
    puts "#{@make} and #{@model}"
  end
end

car = Car.new("BMW", "M5")

car.disply_details 
puts car.make
puts car.model

# ========================================================================================================================
puts "\n"

# Easy Task - 2

# A getter method is a method that gets a value of an instance variable.
# Without a getter method, you can not retrieve a value of an instance variable outside the class the instance variable is instantiated from.

# A setter is a method that sets a value of an instance variable.
# Without a setter method, you can not assign a value to an instance variable outside its class.

class Book
  attr_accessor :title, :author

  def title # Getter method
    @title
  end

  def author # Getter method
    @author
  end

  def displayDetails
    puts "Title: #{@title}, Author: #{@author}"
  end
end

book = Book.new
book.title = "Deadpool"
book.author = "Marvel"

book.displayDetails

puts "\n"
# ========================================================================================================================

class Rectangle
  attr_accessor :length, :width

  def initialize(length, width)
    @length = length
    @width = width
  end

  def area
    @length * @width
  end

  def perimeter
    (2 * (@length + @width))
  end
end

rectangle = Rectangle.new(5, 4)

puts "Area : #{rectangle.area}"
puts "Perimeter : #{rectangle.perimeter}"

# =====================================================================================

class Animal
  def speak
    "I am speak from Animal class"
  end
end

class Dog < Animal

end