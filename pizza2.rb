class Pizza
  def initialize(toppings)
    @toppings = toppings
    @cooked = false
    @cuts_remaining = 0
    @slice =0
  end

  def bake
    @cooked = true
    @slice = 1
    @cuts_remaining = 3
  end

    def cut(num)
      unless @cooked

            puts "error: please choose smaller than 3"
          return
        end
      # Do the cutting
       if @cuts_remaining ==3
        @slices += 1
        @cuts_remaining -=1
      elsif @cuts_remaining == 2 || @cuts_remaining == 1
         @slice += 2
         @cuts_remaining -=1
       elsif @cuts_remaining ==  || @cuts_remaining == 0
         puts "ERROR: Pizza is already too sliced!"
      return
    end

    return @slices
  end

  def eat

    unless @cooked
      puts "error: Can't eat a raw pizza"
        return
  end

  if@slices >0
    #eat a slices
  else
    puts "Error: no more pizza left :("
  end#
end
edwin=Pizza.new(pepper,chicken, cheese)
edwin.bake
edwin.cuts
edwin.end
