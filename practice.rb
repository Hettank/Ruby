class BankAccount
  attr_reader :balance

  def initialize(amount)
    @balance = amount
  end

  def balance=(amount)
    if amount < 0
      puts "Amount Can't be negative"
    else
      @balance += amount
    end
  end

  def withdraw=(amount)
    if amount > @balance
      puts "Insufficient Balance"
    else
      @balance -= amount
    end
  end

  def transactions
    puts "All Transactions"
  end

  def display
    puts "Balance: #{@balance}"
  end
end

class Student
  class << self
    def name
      puts "This is name"
    end
    def surname
      puts "This is surname"
    end
  end
end

bank = BankAccount.new(1000)
# bank.balance = 5000
bank.withdraw = 400
bank.display
bank.display

bank.transactions

# puts Student.name
# puts Student.surname
puts "===================================="

module A
  def combine(first, last)
    first + last
  end
end

class Comb
  include A
  def combine(first, last)
    if first.is_a?(String) || last.is_a?(String)
      "#{first} #{last}"
    else
      super
    end
  end
end

comb = Comb.new
puts comb.combine("Het", "Tank")
puts comb.combine(3, 2)

puts "============================================"

class Person
  def vice(name, age)
    puts "#{name} just turned #{age} and wants to do something fun."
  end
end
class Activities < Person
  def vice(name, age)
    super # sends all the argument to the parent class 'vice' method which we got from the child class vice name, age
    super(name, age) # same as above
    if age >= 21
       puts "#{name} can drink."
    else
       puts "#{name} is too young to drink."
    end
  end
end
timmy = Activities.new
timmy.vice("Lil' Timmy", 21)