class Player
  attr_accessor :gold_coins, :health_points, :live
  def initialize(gold_coins, health_points, live)
    @gold_coins = gold_coins
    @health_points = health_points
    @live = live
  end

  def collect_treasure(x)
    x += 10

  end

  def health_points(x)
    10
  end

  def level_up(x)
    5 + 1
  end
end


edwin = Player.new(0,10,5)

puts edwin.levelup
puts edwin.collect_treasure
puts edwin.do battle(damage)
puts edwin.restart








# attr_accessor :name, :interest_rate, :
#   def initialize(balance,interest_rate)
#     @balance = balance
#     @interest_rate = interest_rate
#   end
#
#   def deposit(x)
#     x + @balance
#   end
#
#   def withdraw(y)
#      @balance - y
#   end
#
#   def gain_interest(x,y)
#     @balance * @interest_rate
#   end
# end
#
# puts "1. initialize"
# puts edwin = BankAccount.new(100,0.15)
# puts " "
# puts "2. Check instance"
# puts edwin.balance
# puts " "
# puts "3. deposit"
# puts edwin.deposit(150)
# puts " "
# puts "4. withdraw"
# puts edwin.withdraw(50)
# puts " "
# puts "5. Gained Interest Rate"
# puts edwin.gain_interest(@balance,@interest_rate)
