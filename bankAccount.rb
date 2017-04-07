class BankAccount

  def initialize(name)
    @name = name
    @balance = 0
    @interest_rate = 1.5
  end

  def deposit(amount)
    @balance = @balance + amount
    puts @balance
  end

  def withdraw(amount)
    @balance = @balance - amount
    puts @balance
  end

  def gain_interest
   @balance = @balance * @interest_rate
   puts @balance
  end

end

edwin=BankAccount.new("Edwin")
puts edwin.inspect
