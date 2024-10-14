class Player
  attr_accessor :name, :life_points
  # @@all_players = []

  def initialize(name_to_save, life_points_to_save)
    @name = name_to_save
    @life_points = life_points_to_save
    # @@all_players << self
  end

  def show_state
    puts "#{@name} a #{@life_points} points de vie"
  end

  def gets_damage(damage)
    @life_points -= damage
    if @life_points <= 0
      # @life_points = 0
      puts "Le joueur #{@name} a été tué !"
    end
  end

  def attacks(player)
    puts "Le joueur #{@name} attaque le joueur #{player.name}"
    damage = compute_damage
    puts "Il lui inflige #{damage} points de damage"
    player.gets_damage(damage)
  end

  def compute_damage
    rand(1..6)
  end

end