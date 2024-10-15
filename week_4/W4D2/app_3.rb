require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


puts "--------------------------------------------------"
puts "| Bienvenue sur 'ILS VEULENT TOUS MA POO' !       |"
puts "| Le but du jeu est d'être le dernier survivant ! |"
puts "--------------------------------------------------"

# Init game
puts "Quel est ton prénom ?"
print "> "
player_name = gets.chomp
game = Game.new(player_name)

# Fight loop
while game.is_still_ongoing?
  game.show_players
  game.menu
  
  print "> "
  choice = gets.chomp
  game.menu_choice(choice)
  
  # enemies strike back 
  if game.is_still_ongoing?
    puts "\nLes autres joueurs t'attaquent !" 
    game.enemies_attack
  end

  # waiting for key entry
  puts "\nAppuie sur entrée pour continuer"
  gets.chomp
  # clean terminal
  system("clear")
end

# end game
game.end
