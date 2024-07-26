puts "Enter any string"
user_input = gets.chomp

count = user_input.count("aeiouAEIOU")

puts "vowel : #{count}"