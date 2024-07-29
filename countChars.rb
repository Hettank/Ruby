string = "hello world"
characters = string.chars

freq = Hash.new(0)

characters.each {
  |key|
  freq[key] += 1
}

puts freq