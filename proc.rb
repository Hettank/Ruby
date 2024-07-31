arr = ["a", "b"]

def convert
  yield
end

returnedChars = convert { arr.map { |i| i.upcase } }

puts returnedChars