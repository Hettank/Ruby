@car_details = []
@slots = []

def issue_ticket(car_no, car_color)
  slot = @car_details.size + 1
  
  @car_details.push({
    carNumber: car_no,
    assignedSlot: slot,
    carColor: car_color
  })

  @slots.push(slot)

  puts "Ticket Issued: Car Number: #{car_no}, Slot Assigned: #{slot}"
end

def leave_car(car_no)
  car = @car_details.find { |car| car[:carNumber] == car_no }

  if car.nil?
    puts "Car not found"
  else
    @car_details.delete(car)
    @slots.delete(car[:assignedSlot])
    puts "Car Number: #{car_no} has left the parking lot from Slot: #{car[:assignedSlot]}"
  end
end

def car_info
  if @car_details.empty?
    puts "Parking lot is empty"
  else
    @car_details.each do |car|
      puts "\nCar Number: #{car[:carNumber]}\nCar Color: #{car[:carColor]}\nSlot Assigned: #{car[:assignedSlot]}\n"
    end
  end
end

def main
  loop do
    puts "1. Enter Parking"
    puts "2. Leave Parking"
    puts "3. Parking Lot Details"
    puts "4. Exit"
  
    choice = gets.chomp.to_i
  
    break if choice == 4
  
    case choice
    when 1
      puts "\n****Enter Car Details****\n"
  
      puts "Enter Car Number:"
      car_no = gets.chomp.to_i
  
      puts "Enter Color of the Car:"
      car_color = gets.chomp
  
      issue_ticket(car_no, car_color)
    when 2
      puts "\n****Enter Car Details****\n"
  
      puts "Enter Car Number:"
      car_no = gets.chomp.to_i
  
      leave_car(car_no)
    when 3
      car_info
    else
      puts "Invalid Choice!"
    end
  end
end

main