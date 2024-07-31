class Person
  # Constructor
  def initialize(name, age)
    @name = name
    @age = age
  end

  def info
    print "Name: #{@name}\nAge: #{@age}"
  end
end

person = Person.new("Het", 20)
puts person.info