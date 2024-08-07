class Person
  # defining class methods using 'self' keyword
  def self.someone(name)
    puts "name: #{name}"
  end

  def self.someone(name, age)
    puts "name: #{name}, age: #{age}"
  end

  # ================================

  def self.someone(*args) # accept multiple arguments as an Array
    if args.size == 1
      puts "Name: #{args[0]}"
    end

    if args.size > 1
      puts "Name: #{args[0]}, age: #{args[1]}"
    end
  end
end

Person.someone("het")
Person.someone("het", 20)