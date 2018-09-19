class Player
  DEFAULT_HP = 100
  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @hp -= 10
  end
end
