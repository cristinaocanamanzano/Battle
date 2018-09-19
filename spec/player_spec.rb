require 'player'

describe Player do

  let(:player) { described_class.new("Cristina") }
  let(:player2) { described_class.new("Jonathan") }

  describe "#name" do
    it "return the name of the player" do
      expect(player.name).to eq("Cristina")
    end
  end

  describe "#hp" do
    it "should return the players HP" do
      expect(player.hp).to eq(described_class::DEFAULT_HP)
    end
  end

  describe "#attack" do
    it "should reduce opponents HP" do
      player.attack(player2)
      expect(player2.hp).to eq 90
    end
  end

  describe "#receive_damage" do
    it "should reduce HP by 10" do
      player.receive_damage
      expect(player.hp).to eq 90
    end
  end

end
