# Stack Data Structure
class Stack
  def initialize
    @stackItems = []
    @top = -1
  end

  def push(element)
    @top += 1
    @stackItems[@top] = element
  end

  def pop
    popped_element = @stackItems[@top]
    @top -= 1
    return popped_element
  end

  def display
    for i in 0..@top 
      puts @stackItems[i]
    end
  end

  def is_empty?
    @top == -1
  end

  def peek
    if is_empty?
      puts "Stack is empty"
    else
      return @stackItems[@top]
    end
  end
end

stack = Stack.new
stack.push(5)
stack.push(1)
stack.push(3)
stack.push(6)
popped = stack.pop
puts "\npopped element is : #{popped}\n"
stack.display
puts "============="
puts stack.peek