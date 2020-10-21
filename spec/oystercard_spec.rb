require 'oystercard'
require 'station'

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
      expect(card.fair).to eq (-5)
    end
  end

  describe "touch in " do
    card = Card.new
    card.touch_in
    it "should let me know I've touch my card" do
      expect(card.touch_in).to eq ("You touched in!")
    end
  end

  describe "touch out" do
    card = Card.new
    card.balance
    it "should tell me I touched out" do
      expect(card.touch_out).to eq (-5)
    end
  end

  describe "pay minimum fair for single journey" do
    card = Card.new
    card.balance
    it "should deduct minimum fair" do
      expect(card.minimum_fair).to eq (-2)
    end
  end

  describe "to tell me where i travelled from" do
    
  end
  

end
