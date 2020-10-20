class Card
  attr_reader :balance, :limit

    def initialize
      @balance = 0
      @limit = 50
    end
  
    def add(a)
      current_amount = @balance += a
      if current_amount == @limit
        return "you have reached your limit"
      else 
        return current_amount
      end
    end

    def limit
      @limit
    end

  end