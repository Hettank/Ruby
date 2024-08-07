class LeaveParking
  attr_accessor :car_no, :car_color, :slots, :car_details

  def initialize(car_no, slots, car_details)
    @car_no = car_no
    @slots = slots
    @car_details = car_details
  end

  def leaveParking    
    car_detail = @car_details.find {
      |car|
      @car_no == car[:carNumber]
    }

    if car_detail
      @slots.delete(car_detail[:assignedSlot])
      @car_details.delete(car_detail)
      puts "\nCar Number #{@car_no} has left the parking.\n"
    else
      puts "\nCar Number #{@car_no} not found in parking.\n"
    end
  end
end