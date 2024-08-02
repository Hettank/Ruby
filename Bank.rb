class User
  attr_accessor :user_id, :name, :address, :phone, :email, :password, :accounts

  def initialize(user_id, name, address, phone, email, password)
    @user_id = user_id
    @name = name
    @address = address
    @phone = phone
    @email = email
    @password = password
    @accounts = []
  end

  def create_account(account)
    @accounts << account
  end

  def update_details(name: nil, address: nil, phone: nil, email: nil)
    @name = name if name
    @address = address if address
    @phone = phone if phone
    @email = email if email
  end

  def delete_account(account_number)
    @accounts.reject! { |account| account.account_number == account_number }
  end

  def authenticate(password)
    @password == password
  end

  def display_details
    puts "User ID: #{@user_id}"
    puts "Name: #{@name}"
    puts "Address: #{@address}"
    puts "Phone: #{@phone}"
    puts "Email: #{@email}"

    if @accounts.empty?
      puts "Account: Account is not created yet..."
    else
      puts "Accounts: #{@accounts.map(&:account_number).join(', ')}"
    end
  end
end

class Account
  attr_accessor :account_number, :account_type, :balance, :transactions

  def initialize(account_number, account_type, balance = 0)
    @account_number = account_number
    @account_type = account_type
    @balance = balance
    @transactions = []
  end

  def depositeMoney(amount)
    @balance += amount
  end

  def withdrawMoney(amount)
    @balance -= amount
  end

  def display_account_details(user_acc)
    puts "Name of account holder: #{user_acc.name}"
  end

end

# User Menu Management
def user_menu(user_acc)
  loop do
    puts "1. Create Account"
    puts "2. Update Details"
    puts "3. Delete Account"
    puts "4. Display User Details"
    puts "5. Go back"
    puts "0. Exit"
    choice = gets.chomp.to_i

    break if choice == 0

    case choice
    when 1
      puts "Enter Account Number: "
      acc_no = gets.chomp.to_i
      puts "Enter Account Type: "
      acc_type = gets.chomp.to_s

      account = Account.new(acc_no, acc_type)
      user_acc.create_account(account)
      puts "Account created successfully."
    when 2
      puts "Enter new name (or leave blank to keep current):"
      name = gets.chomp
      name = nil if name.empty?

      puts "Enter new address (or leave blank to keep current):"
      address = gets.chomp
      address = nil if address.empty?

      puts "Enter new phone (or leave blank to keep current):"
      phone = gets.chomp
      phone = nil if phone.empty?

      puts "Enter new email (or leave blank to keep current):"
      email = gets.chomp
      email = nil if email.empty?

      user_acc.update_details(name: name, address: address, phone: phone, email: email)
      puts "Details updated successfully."
    when 3
      puts "Enter account number to delete:"
      account_number = gets.chomp.to_i
      user_acc.delete_account(account_number)
      puts "Account deleted successfully."
    when 4
      user_acc.display_details
    when 5
      mainMenu(user_acc)
    else
      puts "Invalid Choice..!"
    end
  end
end

def account_menu(user_acc)
  loop do
    puts "1. Deposit Money"
    puts "2. Withdraw Money"
    puts "3. Display Account Details"

    puts "Enter your choice"

    choice = gets.chomp.to_i

    break if choice == 0

    case choice
    when 1
      puts "Enter Account Number"
      accNo = gets.chomp.to_i

      account = user_acc.accounts.find {
        |acc|
        acc.account_number == accNo
      }
      
      if account
        puts "Enter Amount to Deposite:"
        amount = gets.chomp.to_i
        account.depositeMoney(amount)
        puts "Money Deposited Successfully"
      else
        puts "Account Not Found"
      end

    when 3
      display_account_details(user_acc)
    end
  end
end


def mainMenu(user_acc)
  loop do
    puts "1. Manage User"
    puts "2. Manage Account"
    puts "3. Manage Transaction"
    puts "0. Exit"
    choice = gets.chomp.to_i
  
    break if choice == 0
  
    case choice
    when 1
      user_menu(user_acc)
    when 2
      account_menu(user_acc)
    when 3
      puts "Transaction management not implemented yet."
    else
      puts "Invalid Choice..!"
    end
  end
end

user_acc = User.new("397510", "Het", "Ahmedabad", "96659128561", "h@gmail.com", "9127")


mainMenu(user_acc)


puts "Exiting system. Goodbye!"
