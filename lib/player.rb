class Player
  DEFAULT_HP = 100
  attr_reader :name, :hp

  def initialize(name = "player1")
    @name = name
    @hp = DEFAULT_HP
  end

  def receive_damage
    @hp -= 10
  end
end
