def addition(n1, n2)
  return (n1 + n2)
end
def subtraction(n1, n2)
  return (n1 - n2)
end

def division(n1, n2)
  return (n1 / n2)
end

def multiplication(n1, n2)
  return (n1 / n2)
end
begin
  puts "Enter Operation you want to perform"
  puts "1. Addition"
  puts "2. Subtraction"
  puts "3. Division"
  puts "4. Multiplication"
  puts "0. exit"
  choice = gets.chomp.to_i
  break if choice == 0
  puts "Enter 1st number"
  n1 = gets.chomp.to_i
  puts "Enter 2nd number"
  n2 = gets.chomp.to_i
  case choice
  when 1 then puts "Addition #{n1} and #{n2} : #{addition(n1, n2)}"
  when 2 then puts "Subtraction #{n1} and #{n2} : #{subtraction(n1, n2)}"
  when 3 then puts "Division #{n1} and #{n2} : #{division(n1, n2)}"
  when 4 then puts "Multiplication #{n1} and #{n2} : #{multiplication(n1, n2)}"
  end
end until choice == 0 