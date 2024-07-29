newHash = {
  name: "Alice",
  age: 25
}

# each_key method
newHash.each_key {
  |key|
  puts key
}

newHash.each_value {
  |value|
  puts value
}

puts "\nhash using map"
newHash.map {
  |key, value|
  puts "#{key}"
}

# common hash methods
# keys, values

puts newHash.keys
puts newHash.values

# has_key and has_value => it will return us boolean value if key, value exists in hash

puts newHash.has_key?(:name)


# it will create empty hash
freq = Hash.new(0)
puts "Freq: #{freq}"

keys = ["item1", "item2", "item3"]
values = ["value1", "value2", "value3"]

keys.zip(values).map do 
  |key, value|
  freq[key] = value
end

# zip function combines and make pair of both key and value, [["item1", "value1"], ["item2", "value2"], ["item3", "value3"]] and map over them

puts "Freq: #{freq}"