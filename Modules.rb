module Child_1
  def a1
    puts "This is Child one."
  end
end

module Child_2
  def a2
    puts "This is Child Two."
  end
end

module Child_3
  def a3
    puts "This is Child Three."
  end
end

class Parent
  include Child_1
  include Child_2
  include Child_3

  def display
    puts "Three modules have included"
  end
end

obj = Parent.new

obj.display
obj.a1
obj.a2
obj.a3