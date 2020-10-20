require 'Card'
require 'Barrier'

RSpec.describe Card do

  describe "#money_on_card" do
    card = Card.new
    card.balance
    it "should tell me that I have money on my card" do
      expect(card.balance).to eq (0)
    end
  end

  describe "add money to card" do
    card = Card.new
    card.balance
    it "should add money to card" do
      expect(card.add(3)).to eq (3)
    end
  end

  describe "set limit of card" do
    card = Card.new
    card.add(0)
    it "should limit your spend" do
      expect(card.limit).to eq (50)
    end
  end

  describe "deduct fair from card" do
    card = Card.new
    card.balance
    it "should deduct fair from balance" do
      expect(card.fair(5)).to eq (-5)
    end
  end

  describe "touch in of barriers" do
    barrier = Barrier.new
    barrier.touch_in
    it "should let me know I've touch my card" do
      expect(barrier.touch_in).to eq ("You touched in!")
    end
  end

  describe "touch out of barriers" do
    barrier = Barrier.new
    barrier.touch_out
    it "should tell me I touched out" do
      expect(barrier.touch_out).to eq ("You touched out!")
    end
  end



end
