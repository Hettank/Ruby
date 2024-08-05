class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def name
    return @name
  end

  def age
    return @age
  end

  def name=(name)
    if name.is_a?(String)
      @name = name
    else 
      puts "Name must be a string"
    end
  end

  def age=(age)
    if age < 10
      puts "Age can't be less than 10"
    else
      @age = age
    end
  end
end

person = Person.new("hetn", 10)
puts person.name
puts person.age

person.name = 78

person.name = "Het"

puts "New Name: #{person.name}"

person.age = 7

person.age = 11

puts "new age: #{person.age}"