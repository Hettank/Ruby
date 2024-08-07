class EnterParking
  attr_accessor :car_no, :car_color, :slots, :car_details

  def initialize(car_no, car_color, slots, car_details)
    @car_no = car_no
    @car_color = car_color
    @slots = slots
    @car_details = car_details
  end

  def issue_ticket
    slot_number = @slots.size + 1
    @slots.push(slot_number)

    @car_details.push({
      carColor: @car_color,
      assignedSlot: slot_number,
      carNumber: @car_no,
      timeStamp: DateTime.now
    })

    puts "\nTicket Issued: Car Number #{@car_details.last[:carNumber]}, Slot #{@car_details.last[:assignedSlot]}\n"
  end

  def display_details
    puts "Car Number: #{@car_no}, Car Color: #{@car_color}"
  end
end