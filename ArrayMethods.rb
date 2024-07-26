arr = [1, 2, 3, 4, 5]

sum = arr.sum

puts sum

puts "***********************************"


# min, max methods

minimum = arr.min
maximum = arr.max

puts "maximum : #{maximum}"
puts "minimum : #{minimum}"

puts "***********************************"

# reverse array

reversed_array = arr.reverse
puts "Reversed array: #{reversed_array}"


puts "***********************************"

# array to string

arrToStr = arr.join(", ")

puts arrToStr 

puts "***********************************"

deletedArr = arr.delete(2)

puts deletedArr
puts "***********************************"
puts arr