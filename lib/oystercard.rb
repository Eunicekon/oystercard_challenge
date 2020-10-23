class Card
  attr_reader :balance, :fair, :minimum_fair, :entry_station, :exit_station

  LIMIT = 50

    def initialize(balance=10)
      @balance = balance
      @fair = -5
      @minimum_fair = -1
      @entry_station = nil
      @exit_station = nil
      @in_journey = false
    end
  
    def add(a) #if balance + add is more than = 50 = no top up . do not allow top up. if less than 50 allow top up. 
      if a + @balance >= LIMIT
        raise "You have reached your limit of £#{LIMIT}"  #raise returns an error
      else 
        return @balance += a
      end 
    end

    def fair
      @balance += @fair
    end
    
    def minimum_fair
      @balance += @minimum_fair
    end

    def touch_in(entry_station) #record your location on the card 
      @entry_station = entry_station
      if @balance <= @minimum_fair
        raise "You dont have sufficient money for this trip"
      else
        return @in_journey = true
      end
      # @in_journey = true
    end

    def in_journey?
      @in_journey
    end

    def touch_out(exit)
      @in_journey = false
      @exit_station = exit
      @balance += @fair
    end

  end