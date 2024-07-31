def runBlock(&b) # any bock is passed will assign into 'b'
  b.call 
end

def yieldBlock
  yield
end

# we are calling the method 'runBlock and passing whole {} to it and then yield function takes care of it'
runBlock { puts "Hello world" }
yieldBlock { puts "yield block called " }


# both doing same operation 'yield' and call function 