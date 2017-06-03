=begin
The following code creates a class "Account" which simulates a basic
bank account. The user can withdraw money or view their balance by
entering their PIN. The script includes a way to verify the PIN before allowing
for the methods. This script shows the use of public and private methods in
a class
=end

class Account
  attr_reader :name
  attr_reader :balance

  def initialize(name,balance = 100)
    @name = name
    @balance = balance
  end

  private
  def pin
    @pin = 1234
  end

  private
  def pin_error
    puts "Access denied: Wrong PIN!"
  end

  public
  def display_balance(pin_number)
    pin_number == Account.pin ? "Balance: #{@balance}" : Account.pin_error
  end

  public
  def withdraw(pin_number,amount)
    if pin_number == Account.pin_number
      @balance -= amount
      puts "#{amount} witdrawed. Remaining balance: #{@balance}"
    else
      puts Account.pin_error
    end
  end
end
