people = { "i1" => "developer", "i2" => "designer", "i3" => "manager" }

# capitalized = people.map {
#   |key, value|
#   [key, value.capitalize]
# }.to_h

# puts capitalized

capitalized = Hash.new

people.each {
  |key, value|
  capitalized[key] = value.capitalize
}

puts capitalized