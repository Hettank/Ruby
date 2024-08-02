my_proc = Proc.new {
  |x|
  x * 2
}

my_proc = proc {
  |x|
  x * 2
}

# puts my_proc.call(3, 4) # it will discard the other argument, won't throw an error

def test_proc
  my_proc = Proc.new { return "Returning from Proc" }
  my_proc.call
  "Finished test_proc"
end

def test_lambda
  my_lambda = lambda { return "Returning from Lambda" }
  result = my_lambda.call
  "Finished test_lambda: #{result}"
end

puts test_proc
puts test_lambda 