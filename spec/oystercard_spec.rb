require 'oystercard'
require 'station'

RSpec.describe Card do
#doubles
  let(:station) {double("paddington")} #=> everytime we call an entry station, its going to fill it in as paddington
  let(:subject) {Card.new(10)}
  let(:exit) {double("bank")}

  describe "#New_card" do
    # card = Card.new #subject ===> card.new
    it "should tell me that I have money on my card" do
      expect(subject.balance).to eq (10)  #card in card.balance has been replaced with SUBJECT which is = card.new
    end  
  end

  describe "#add_money" do
    it "should add money to card" do
      subject.add(3)
      expect(subject.balance).to eq (13)
    end

    it "should raise an error if higher limit" do
      subject.add(3)
      expect{ subject.add(50) }.to raise_error("You have reached your limit of £50") #syntax for writing/raising and error (look at line 16 for method error)
      expect(subject.balance).to eq (13)
    end
  end

  describe "deduct_fair_from_card" do
    it "should deduct fair from balance" do
      subject.fair
      expect(subject.balance).to eq (5)
    end
  end

  describe "#pay_minimum_fair_for_single_journey" do
    it "should deduct minimum fair" do
      subject.minimum_fair
      expect(subject.balance).to eq (9)
    end
  end

  # describe "#insufficient_balance" do
  #   it "should throw an error if insufficient balance is touched in" do
  #     actual_value = balance
  #     expected_value = throw_error
  #     expect(actual_value).to eq expected_value
  #   end
  # end
  
  describe "#touch_in" do
    it "should register entry station" do
      subject.touch_in(station)
      expect(subject.entry_station).to eq (station)
    end
  end

  describe "#in_journey?" do
    it "should tell me I'm on my journey when I touch in" do
      subject.touch_in(station)
      expect(subject.in_journey?).to eq true
    end
  end

  describe "#touch_out" do
    it "should deduct my fair" do
      subject.balance
      expect(subject.touch_out(exit)).to eq (5)
    end
  end

  describe "#exit_station" do
    it "should tell me where I touched out at" do
      subject.touch_out(exit)
      expect(subject.exit_station).to eq (exit)
    end
  end

end
