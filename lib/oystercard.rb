class Card
  attr_reader :balance, :limit, :fair, :minimum_fair

    def initialize
      @balance = 0
      @limit = 50
      @fair = -5
      @minimum_fair = -2
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

    def fair
      @balance += @fair
    end

    def touch_in
      @touch_out = "You touched in!"
    end

    def touch_out
      @balance += @fair
    end

    def minimum_fair
      @balance += @minimum_fair
    end

  end