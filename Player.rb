class Player

  attr_accessor :gold_coins, :health_points, :live, :name

  def initialize(name)
    @name = name
    @lives = 5
    @gold_coins = 0
    @health_points = 10
    puts "#{@name}, lives: #{@lives}, coins: #{@gold_coins}, health: #{@health_points}."
  end

  def level_up
    return @lives += 1
  end

  def collect_treasure
    @gold_coins += 10
    puts "coins #{@gold_coins}"
      if @gold_coins == 50
        level_up
        puts "lives #{@lives}"
        @gold_coins = 0
      end
  end

  # def do_battle(damage)
  #   @health_points = @health_points - damage
  #   return @lives
  # end
end

puts edwin=Player.new("edwin")
