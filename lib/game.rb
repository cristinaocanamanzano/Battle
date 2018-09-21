require_relative 'player'

class Game
  attr_reader :players, :player_turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @player_turn = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.receive_damage
    switch_turn
  end

  def switch_turn
    if @player_turn == player_1
      @player_turn = player_2
    elsif @player_turn == player_2
      @player_turn = player_1
    end
  end

  def opponent
    if @player_turn == player_1
      player_2
    elsif @player_turn == player_2
      player_1
    end
  end

end
