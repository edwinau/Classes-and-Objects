class Player

  attr_accessor :gold_coins, :health_points, :live, :name

  def initialize(name)
    @name = name
    @lives = 5
    @gold_coins = 0
    @health_points = 10
    puts "Welcome #{@name}! you have: #{@lives} lives, #{@gold_coins} coins, #{@health_points} health_points."
  end

  def level_up
    @lives += 1
  end

  def collect_treasure
    @gold_coins += 10
    puts "coins #{@gold_coins}"
      if @gold_coins == 50
        level_up
        @gold_coins = 0
        puts "LEVEL UP!  now life(s): #{@lives}"
      end
  end

  def do_battle(damage)
    puts "#{@lives} lives left"
    @health_points -= damage
    puts "health is now #{@health_points}."
      if @health_points == 0
        puts "live lost."
        @lives -= 1
        @health_points = 10
        puts "now #{@lives} life(s) left."
          if @lives == 0
            puts "Game over. Restarting!"
            restart
          end
      end
    end

    def restart
      @lives = 5
      @gold_coins = 0
      @health_points = 10
      puts "Welcome back#{@name}! you now have: #{@lives} lives, #{@gold_coins} coins, #{@health_points} health_points."
    end
      #     if @lives == 0
      #
      #       return restart
      #     end
      # end



end

# puts edwin=Player.new("edwin")
