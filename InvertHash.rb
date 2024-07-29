original = { "a" => 1, "b" => 2, "c" => 3 }

duplicate = {}

original.each {
  |key, value|

  temp = key
  key = value
  value = temp
  duplicate[key] = value
}

puts original
puts duplicate