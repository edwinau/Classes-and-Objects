class Cat

attr_accessor :name, :preferred_food, :meal_time

    def initialize(name, preferred_food, meal_time)
      @name = name
      @preferred_food = preferred_food
      @meal_time = meal_time
    end

    def eats_at
      if @meal_time == 24
        return "midnight"
      elsif @meal_time == 12
        return "noon"
      elsif @meal_time > 12 && @meal_time < 24
        return "#{@meal_time - 12}PM"
      elsif @meal_time < 12
        return "#{@meal_time}AM"
      end
    end

    def meow
      puts "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}."
    end

end


cat1 = Cat.new("sam","canned_food",11)
cat2 = Cat.new("gidget","chow",15)

puts Cat
puts cat1.name
puts cat2.name
puts cat1.eats_at
puts cat2.eats_at
puts cat1.meow
puts cat2.meow
