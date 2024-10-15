class PriceCalculator
  PRICING = {
    "milk" => { unit_price: 3.97, sale_price: 5.00, sale_quantity: 2 },
    "bread" => { unit_price: 2.17, sale_price: 6.00, sale_quantity: 3 },
    "banana" => { unit_price: 0.99 },
    "apple" => { unit_price: 0.89 }
  }

  def initialize
    @items = Hash.new(0)
    @total_cost = 0
    @total_savings = 0
  end

  def calculate_total
    @items.each do |item, quantity|
      pricing = PRICING[item]
      if pricing[:sale_price] && pricing[:sale_quantity]
        sale_units = quantity / pricing[:sale_quantity]
        remainder_units = quantity % pricing[:sale_quantity]

        sale_cost = sale_units * pricing[:sale_price]
        remainder_cost = remainder_units * pricing[:unit_price]
        item_cost = sale_cost + remainder_cost

        original_cost = quantity * pricing[:unit_price]
        savings = original_cost - item_cost

        @total_cost += item_cost
        @total_savings += savings
      else
        item_cost = quantity * pricing[:unit_price]
        @total_cost += item_cost
      end
    end
  end

  def print_receipt
    puts "\nItem     Quantity      Price"
    puts "--------------------------------------"

    @items.each do |item, quantity|
      pricing = PRICING[item]
      item_cost = calculate_item_cost(item, quantity)
      puts "#{item.capitalize.ljust(10)} #{quantity.to_s.ljust(10)}   $#{'%.2f' % item_cost}"
    end

    puts "\nTotal price : $#{'%.2f' % @total_cost}"
    puts "You saved $#{'%.2f' % @total_savings} today."
  end

  def calculate_item_cost(item, quantity)
    pricing = PRICING[item]
    if pricing[:sale_price] && pricing[:sale_quantity]
      sale_units = quantity / pricing[:sale_quantity]
      remainder_units = quantity % pricing[:sale_quantity]

      sale_cost = sale_units * pricing[:sale_price]
      remainder_cost = remainder_units * pricing[:unit_price]
      return sale_cost + remainder_cost
    else
      return quantity * pricing[:unit_price]
    end
  end

  def add_items(input)
    input.split(',').map(&:strip).each do |item|
      @items[item] += 1 if PRICING[item]
    end
  end
end

def run_calculator
  calculator = PriceCalculator.new
  puts "Please enter all the items purchased separated by a comma"
  input = gets.chomp.downcase
  calculator.add_items(input)
  calculator.calculate_total
  calculator.print_receipt
end

run_calculator
