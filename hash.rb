name = {
  name: "Het",
  email: "h@gmail.com"
}

name.each do 
  |key, value|
  puts "Key: #{key} value is Value: #{value}"
end

puts name
puts name[:name]
puts name[:email]

puts name.fetch(:fda, "not found") # if 'key' is not found then 2nd argument gets print
# puts name.class

# empty hash
hash = {}
newHash = Hash.new
anotherNewHash = Hash[]

hash[:age] = 30

puts hash[:age]

name.delete(:name)

# creating hash with string key

strHash = {
  "item1" => "value1",
  "item2" => "value2"
}

strHash.each do
  |key, value|
  puts "#{key}: #{value}"
end