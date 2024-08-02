class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def displayDetails
    puts "name: #{@name}, age #{@age}"
  end

end

person = Person.new("Het", 25)

person.displayDetails
puts person.name 
puts person.age 