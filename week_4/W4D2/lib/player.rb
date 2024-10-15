class Player
  attr_accessor :name, :life_points
  # @@all_players = []

  def initialize(name_to_save)
    @name = name_to_save
    @life_points = 10
    # @@all_players << self
  end

  def show_state
    if @life_points > 0
      print "#{@name} a #{@life_points} points de vie"
    else 
      print "#{@name} est mort"
    end
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

class HumanPlayer < Player
  attr_accessor :weapon_level

  def initialize(name_to_save)
    super(name_to_save)
    @life_points = 100
    @weapon_level = 1
  end

  def show_state
    puts "#{@name} a #{@life_points} points de vie et une arme de niveau #{@weapon_level}."
  end

  def compute_damage
    rand(1..6) * @weapon_level
  end

  def search_weapon
    "\n **************** \nRecherche d'une nouvelle arme :"
    new_weapon = rand(1..6)
    puts "Tu as trouvé une arme de niveau #{new_weapon}"
    if new_weapon > @weapon_level
      @weapon_level = new_weapon
      puts "\nYouhou ! elle est meilleure que ton arme actuelle : tu la prends."
    else
      puts "\nM@*#$... elle n'est pas mieux que ton arme actuelle..."
    end
  end

  def search_health_pack
    dice_roll = rand(1..6)
    if dice_roll == 1
      puts "Tu n'as rien trouvé... ça sent le sapin"
    elsif dice_roll >= 2 && dice_roll <= 5
      puts "Bravo, tu as trouvé un pack de +50 points de vie !"
      @life_points += 50
      @life_points = 100 if @life_points > 100
    elsif dice_roll == 6
      puts "Waow, tu as trouvé un pack de +80 points de vie !"
      @life_points += 80
      @life_points = 100 if @life_points > 100
    end
  end

end