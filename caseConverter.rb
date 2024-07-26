puts "Enter a string"

user_input = gets.chomp

puts "write upper to convert to Uppercase and lower for lowercase"

userChoice = gets.chomp

if userChoice == 'upper'
  user_input = user_input.upcase
elsif userChoice == 'lower'
  user_input = user_input.downcase
else
  puts "wrong choice"
end

puts "Final String #{user_input}"