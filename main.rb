# String methods

# "Length" => to check the length of any string

variable = "hello"

puts variable.length

# "empty" => returns true if string has 0 length and false insted

puts "".empty?

# "count" => count method counts how many time any specific character is found in string
 
puts "HELLO".count('EE')

# "insert" => insert method inserts a string into another string before a give index

puts "Hello".insert(0, "a")

# "upcase" => upcase method transforms all letters in a string to uppercase.

puts "hiii".upcase()

# "downcase" => downcase method transforms all letters in a string to lowercase.

puts "HII".downcase()

# "swapcase" => method transforms the uppercase latters in a string to lowercase and the lowercase letters to uppercase.

puts "HeLlO".capitalize()

# "capitalize" => method make the first letter in a string uppercase and the rest of the string lowercase.


puts "olleh".reverse()

# "reverse" => reverse the string


puts "Hello, how are you?".split()

# "reverse" => takes a strings and splits it into an array, then returns the array.


puts "Soft Coding Solutions".chop()

# "reverse" => method removes the last character of the string.

vari = "Batman"

newbatman = vari.chop()

puts newbatman

puts newbatman == vari

# "strip" => method removes the leading and trailing whitespace on strings, including tabs, newlines, and carriage returns

puts "  hello".strip()

# "chomp" => method removes the last character in a string, only if it’s a carriage

puts "hello\n".chomp()

# "to_i" => method converts a string to an integer.

puts "13".to_i()

# "gsub" => replace every reference of the first parameter for the second parameter on a string

puts "hello world".gsub("world", "duniya")

# "concatenation" => merge two strings

puts "15" + "15"
puts "14".concat "14" 

# "index" => index method returns the index position of the first occurrence of the substring or regular expression pattern match in a string. If there is no match found, nil is returned.

puts "information".index('o')
puts "information".index('z') # => returns 'nil'

# "clear" => Removes string content.

puts "info".clear()