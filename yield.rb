def runBlock(&b) # any bock is passed will assign into 'b'
  b.call 
end

def yieldBlock
  yield
end

# we are calling the method 'runBlock and passing whole {} to it and then yield function takes care of it'
runBlock { puts "Hello world" }
yieldBlock { puts "yield block called " }

arr = ["a", "b"]

def convert
  yield
end

returnedChars = convert { arr.map { |i| i.upcase } }

puts returnedChars

# both doing same operation 'yield' and call function 



def operation(a, b)
  yield(a, b)
end

puts operation(4, 5) { |a, b| a + b } # passed a block to a method and done the operation

# *********************** Implicit Block *********************

def calculation(a, b, &block) # &block is an explicit (named) parameter
  block.call(a, b)
 end
 
 puts calculation(5, 5) { |a, b| a + b } # this is an implicit block, => -- it is nameless and is not => passed as an explicit parameter.

# *********************** Explicit Block *********************

def calc(a, b, &addition)
  yield(a, b)
end

explicitBlock = lambda { |a, b| return a + b }
addedVal = calc(3, 4, &explicitBlock)

puts addedVal