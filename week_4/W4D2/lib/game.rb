class Game
  attr_accessor :HumanPlayer, :enemies

  def initialize(player_name)
    @human_player = HumanPlayer.new(player_name)
    @enemies = []
    # creation of 4 bots
    4.times { |i| @enemies << Player.new("Bot #{i + 1}") }
  end

  def kill_player(player)
    @enemies.delete(player) # Supprime le joueur mort de @enemies
  end





end