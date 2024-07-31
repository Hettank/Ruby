# Define a class

class Animal 
  def speak 
    @vari = 10 # instance variable, belongs to instance of this class, prefixed with '@'
    print "#{@vari} Bark..."
  end
end
 
# create an object
dog = Animal.new

# print content of any method inside of any class
puts dog.speak