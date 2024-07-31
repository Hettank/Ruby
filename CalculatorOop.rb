class Calculator
  def initialize(n1, n2)
    @n1 = n1
    @n2 = n2
  end

  def addition
    @n1 + @n2
  end

  def subtraction
    @n1 - @n2
  end
  
  def division
    @n1 / @n2
  end
  
  def multiplication
    @n1 * @n2
  end

  def reminder
    @n1 % @n2
  end
end

begin
  puts "Enter Operation you want to perform"
  puts "1. Addition"
  puts "2. Subtraction"
  puts "3. Division"
  puts "4. Multiplication"
  puts "5. Reminder"
  puts "0. Exit"

  choice = gets.chomp.to_i

  break if choice == 0

  puts "Enter 1st number"
  n1 = gets.chomp.to_i

  puts "Enter 2nd number"
  n2 = gets.chomp.to_i

  calculator = Calculator.new(n1, n2)

  case choice
  when 1
    puts "\nAddition is : #{calculator.addition}"
  when 2
    puts "\nSubtraction is : #{calculator.subtraction}"
  when 3
    puts "\nDivision is : #{calculator.division}"
  when 4
    puts "\nMultiplication is : #{calculator.multiplication}"
  when 5
    puts "\nReminder is : #{calculator.reminder}"
  else
    puts "Invalid choice. Please select a valid operation."
  end
end until choice == 0

puts "Exiting Calculator. Goodbye!"
