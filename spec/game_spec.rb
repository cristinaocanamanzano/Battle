require 'game'

describe Game do

  let(:player) { double :Player, receive_damage: true}
  let(:game) { described_class.new(player)}

  describe "#attack" do
    it "should reduce opponents HP" do

      expect(player).to respond_to(:receive_damage)
      game.attack(player)
    end
  end


end
