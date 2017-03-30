class Player
  attr_accessor :gold_coins, :health_points, :life
  def initialize
    @gold_coins = 0
    @health_points = 10
    @life = 5
  end

  def level_up()
    @life += 1
  end

  def collect_treasure()
    puts "#{@gold_coins += 10}"
    puts level_up()
  end

  def do_battle(damage)
    @health_points -= damage
      if@life == 1
        restart()
        puts "game over, restarting"
      elsif @health_points <= 0
        @health_points == 10
        @life -= 1
        puts "life lost"

      else
        puts @health_points
      end
  end

  def restart
    @life = 5
    @gold_coins = 0
    @health_points = 10
  end

end


# edwin = Player.new
# puts "1."
# puts edwin.level_up
# puts " "
# puts "2."
# puts edwin.collect_treasure
# puts " "
# puts "3."
# puts edwin.do_battle(damage)
# puts " "
# puts "4."
# puts edwin.restart
# puts " "








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
