class Pizzeria
  def initialize(toppings)
    @opened  = true
    @numPizza = 0

  def order(num)
    unless @opened
      return
    end

      @numpizza += num
      if @numpizza > 6
        "can't order more than 5"
         return
       else
         @numpizza = num
       end
     end
  end

  def open
    @open == true
  end

  def close
    @open == false
  end

  def restock
    @open == false

  end

end

customer.order(3)
