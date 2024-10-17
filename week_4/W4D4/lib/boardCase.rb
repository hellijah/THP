class BoardCase
  attr_accessor :value, :position

  def initialize(position)
    @position = position
    @value = " "
  end

  def update_case(player_symbol)
    if @value == " "
      @value = player_symbol
      true
    else
      puts "Erreur : cette case est déjà occupée !"
      false
    end
  end

end