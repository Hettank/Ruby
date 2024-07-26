puts "Enter the String : "
user_input = gets.chomp.to_s

if user_input == user_input.reverse
  puts "Entered String is palindrome"
else
  puts "Entered String is not palindrome"
end