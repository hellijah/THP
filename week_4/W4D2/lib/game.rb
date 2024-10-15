class Game
  attr_accessor :HumanPlayer, :enemies

# change player name color
# def colored(text, color_code)
#   "\e[#{color_code}m#{text}\e[0m"
# end

  def initialize(player_name)
    @human_player = HumanPlayer.new(player_name)
    @enemies = []
    # creation of 4 bots
    4.times { |i| @enemies << Player.new("Bot #{i + 1}") }
  end

  def kill_player(player)
    @enemies.delete(player) # delete dead player from array
  end

  def is_still_ongoing?
    @human_player.life_points > 0 && !@enemies.empty?
  end

  def show_players
    puts @human_player.show_state
    puts "Il reste #{@enemies.size} ennemis."
  end

  def menu
    puts "\n Choix possible"
    puts "a -> chercher une nouvelle arme"
    puts "s -> chercher un health pack"
    puts "attaquer un joueur :"

    #  show ennemies array as a choice from 0 to 3 if alive
    @enemies.each_with_index do |enemy, index|
      # if enemy.life_points > 0
        puts "#{index} -> #{enemy.name}"
        puts "#{enemy.show_state}"
      # end
    end
  end

  def menu_choice(choice)
    case choice
    when "a"
      @human_player.search_weapon
    when "s"
      @human_player.search_health_pack
    else
      #  define index of alive ennemies as choice
      index = choice.to_i # convert to integer
      if index >= 0 && index < @enemies.size && @enemies[index].life_points > 0
        @human_player.attacks(@enemies[index])
        kill_player(@enemies[index]) if @enemies[index].life_points <= 0 # check if ennemy is dead
      end
    end
  end

  def enemies_attack # every living enemies attack the human player
    @enemies.each do |enemy|
      enemy.attacks(@human_player) if enemy.life_points > 0
    end
  end

  def end
    puts "GAME OVER"
    if @human_player.life_points > 0
      puts "BRAVO ! TU AS GAGNE !"
    else
      puts "Loser ! Tu as perdu !"
    end
  end

end