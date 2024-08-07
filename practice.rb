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