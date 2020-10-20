class Card
  attr_reader :balance, :limit, :fair

    def initialize
      @balance = 0
      @limit = 50
      @fair = 5
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

    def fair(b)
      @balance -= b
    end

  end