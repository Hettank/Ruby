class Node
  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end

class SignlyLinkedList
  def initialize
    @head = nil
  end

  def append(value)
    new_node = Node.new(value)

    if @head.nil?
      @head = new_node
    else
      current = @head
      current = current.next until current.next.nil?
      current.next = new_node
    end
  end

  def display
    current = @head
    while current
      print "#{current.value} -> "
      current = current.next
    end
    puts "nil"
  end
end

singly = SignlyLinkedList.new
singly.append(4)
singly.append(3)
singly.append(32)
singly.display

# |value,next|--->|value, next|