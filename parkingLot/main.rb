require_relative 'enter_parking'
require_relative 'leave_parking'
require 'date'

class Main
  slots = []
  car_details = []
  
  loop do
    puts "1. Enter Parking"
    puts "2. Leave Parking"
    puts "3. Display Parking Lot Details"
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
  
      enter_parking = EnterParking.new(car_no, car_color, slots, car_details)
      enter_parking.issue_ticket
    when 2
      puts "\n****Enter Car Details****\n"
  
      puts "Enter Car Number:"
      car_no = gets.chomp.to_i
  
      leave_parking = LeaveParking.new(car_no, slots, car_details)
      leave_parking.leaveParking
    when 3
      if car_details.empty?
        puts "\nNo cars currently parked.\n"
      else
        puts "\n****Parking Lot Details****\n"
        car_details.each do |car|
          puts "\n\n\tCar Number => #{car[:carNumber]}\n\tCar Color => #{car[:carColor]}\n\tSlot Assigned => #{car[:assignedSlot]}\n\n"
        end
      end
    else
      puts "Invalid Choice!"
    end
  end
end