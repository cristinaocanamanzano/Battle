require 'game'

describe Game do

  let(:game) { described_class.new(player_1, player_2)}
  let(:player_1) { double :player_1, receive_damage: nil }
  let(:player_2) { double :player_2, receive_damage: nil }

  describe "initialize" do
    it "should contain an array with two players" do
      expect(game.players).to eq [player_1, player_2]
    end
  end
  describe '#player_1' do
    it 'gives the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'gives the second player' do
      expect(game.player_2).to eq player_2
    end
  end
  describe "#attack" do
    it "should reduce opponents HP" do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  describe "#player_turn" do
    it "should start with player 1's turn" do
      expect(game.player_turn).to eq player_1
    end
  end

  describe "#switch turn" do
    it "switches players turn after attacking" do
      game.attack(player_2)
      expect(game.player_turn).to eq player_2
    end
  end
end
