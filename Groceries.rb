class GroceryCalculator
  def initialize
    @groceries_list = []
  end

  def add_item(name, price)
    item_found = false

    @groceries_list.each {
      |item|

      if item[:name] == name
        item[:price] += price
        item_found = true
        break
      end
    }

    unless item_found
      @groceries_list << { name: name, price: price }
    end

    puts "Item '#{name}' with price ₹#{price} added to the list."
  end

  def view_list
    if @groceries_list.empty?
      puts "List is empty"
    else
      puts "Grocery List..."
      @groceries_list.each {
        |item|
        puts "\nName: #{item[:name]},\nPrice: #{item[:price]}"
      }
    end
  end

  def total_orders
    puts 
  end

  def calculate_total
    total = 0
    @groceries_list.each {
      |item|
      total += item[:price]
    }

    puts "\nFinal price is : #{total}"
  end

  def remove_item(name)
    isFound = @groceries_list.find {
      |item| item[:name] == name
    }
  
    if isFound.nil?
      print "\nItem not found\n"
    else
      @grocery_list.reject! {
        |item| item[:name] == name
      }
      print "\nItem #{name} removed successfully\n"
    end
  end
  

  def menu
    loop do
      puts "\n--- Grocery Calculator ---"
      puts "1. Add Item"
      puts "2. View List"
      puts "3. Calculate Total"
      puts "4. Remove Item"
      puts "5. Exit"
      print "Enter your choice: "

      choice = gets.chomp.to_i

      break if choice == 5

      case choice
      when 1
        puts "Name of an item"
        itemName = gets.chomp.downcase
        
        puts "Price of an item"
        itemPrice = gets.chomp.to_f

        add_item(itemName, itemPrice)
      when 2
        view_list()
      when 3
        calculate_total()
      when 4
        puts "Name of an item"
        itemName = gets.chomp.downcase

        remove_item(itemName)
      end
    end
  end
end

grocery_calc = GroceryCalculator.new()
grocery_calc.menu