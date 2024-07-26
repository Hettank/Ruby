puts "Enter string :"
input = gets.chomp.downcase

puts "Enter character to replace"
old_char = gets.chomp.downcase

puts "Enter character replacement"
new_char = gets.chomp.downcase

newString = input.gsub(old_char, new_char)

puts "You replaced #{old_char} with #{new_char}.\nthis is you new string : #{newString}"