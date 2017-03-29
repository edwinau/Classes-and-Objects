class Cat
  attr_accessor :name, :preferred_food, :meal_time
    def initialize(name, preferred_food, meal_time)
      @name = name
      @preferred_food = preferred_food
      @meal_time = meal_time
    end

    def eat_at
      if @meal_time < 12
         "#{@meal_time} AM"
      elsif @meal_time <= 23
         "#{@meal_time - 12} PM"
      else
         "Midnight"
      end
    end

    def meow
      "my name is #{@name} and I eat #{@preferred_food} at #{@meal_time}."
    end
end

gidget = Cat.new("Giget" , "Chow Time" , 23 )
madame = Cat.new("Madam" , "Canned Food" , 3)
puts "----"
puts gidget.eat_at
puts "----"
puts madame.eat_at
puts "----"
puts gidget.meow
puts "----"
puts madame.meow



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
