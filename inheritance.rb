class Vehicle
  attr_accessor :make, :model, :year

  def initialize(make, model, year)
    @make = make
    @model = model
    @year = year
  end

  def start_engine
    puts "Engine is starting"
  end

  def details
    puts "Vehicle: #{@make} #{@model}, Year: #{@year}"
  end
end

class Bike < Vehicle
  attr_accessor :number_of_tyre

  def initialize(make, model, year, number_of_tyre)
    super(make, model, year)
    @number_of_tyre = number_of_tyre
  end

  def details
    super() # call the 'details' method of Vehicle class
    puts "Number of tyre: #{@number_of_tyre}"
  end
end

class Motorcycle < Vehicle
  attr_accessor :type

  def initialize(make, model, year, type)
    super(make, model, year)
    @type = type
  end

  def details
    puts "Type: #{@type}"
  end
end


bike = Bike.new("BMW", 1999, 2005, 2)
puts bike.details

motorcycle = Motorcycle.new("Harley Devidson", 1975, 2000, "Two-wheeler")
motorcycle.details