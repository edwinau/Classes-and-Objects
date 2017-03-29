class BankAccount
attr_accessor :balance, :interest_rate
  def initialize(balance,interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

  def deposit(x)
    x + @balance
  end

  def withdraw(y)
     @balance - y
  end

  def gain_interest(x,y)
    @balance * @interest_rate
  end
end

puts "1. initialize"
puts edwin = BankAccount.new(100,0.15)
puts " "
puts "2. Check instance"
puts edwin.balance
puts " "
puts "3. deposit"
puts edwin.deposit(150)
puts " "
puts "4. withdraw"
puts edwin.withdraw(50)
puts " "
puts "5. Gained Interest Rate"
puts edwin.gain_interest(@balance,@interest_rate)
