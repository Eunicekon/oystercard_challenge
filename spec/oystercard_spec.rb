require 'Card'

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

end
