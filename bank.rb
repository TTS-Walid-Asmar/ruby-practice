class Account
  attr_writer :pin
  attr_accessor :name, :balance
  def initialize(name, balance, pin)
    @name = name
    @balance = balance
    @pin = pin
  end
  def pin_error
    counter = 0
    pin_try = ''
    while counter < 5 && pin_try != @pin
      puts "Enter your PIN"
      pin_try = gets.chomp
      puts "Access denied: incorrect PIN."
      counter = counter + 1
    end
    if counter == 5
      interface
    end
  end
  def display_balance
    pin_error
    puts "#{@name} alance: $#{@balance}"
    interface
  end
  def withdraw
    pin_error
    puts "Enter Amount to Withdraw"
    draw = gets.chomp.to_f
    @balance = @balance - draw
    puts "thank you"
    puts "Your new balance is: #{@balance.round(3)}"
    interface
  end
  def deposit
    pin_error
    puts "Enter amount to Deposit"
    dep = gets.chomp.to_f
    @balance = @balance + dep
    puts "thank you"
    puts "Your new balance is: #{@balance.round(3)}"
    interface
  end
  def interface
    puts "Please select from the following choices."
    puts "Display Balance ==> PRESS 1"
    puts "Withdraw ==> PRESS 2"
    puts "Deposit ==> PRESS 3"
    puts "EXIT ==> PRESS 4"
    choice = gets.chomp.to_i
    if choice == 1
      display_balance
    end
    if choice == 2
      withdraw
    end
    if choice == 3
      deposit
    end
    if choice == 4
      puts "Goodbye."
    end
  end
end
bub = Account.new("Bub", 2000.00, "0000")
puts "Hi, Bub."
bub.interface
