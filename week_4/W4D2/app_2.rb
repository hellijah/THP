require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

# change player name color
def colored(text, color_code)
  "\e[#{color_code}m#{text}\e[0m"
end

puts "--------------------------------------------------"
puts "| Bienvenue sur 'ILS VEULENT TOUS MA POO' !       |"
puts "| Le but du jeu est d'être le dernier survivant ! |"
puts "--------------------------------------------------"

# Init human
puts "Quel est ton prénom ?"
print "> "
player_name = gets.chomp
user = HumanPlayer.new(colored(player_name, 32)) # 32 for green

# Init bot
player1 = Player.new(colored("Josiane", 31))  # 31 for red
player2 = Player.new(colored("José", 34))     # 34 for blue
enemies = [player1, player2]

# Fight loop
while user.life_points > 0 && (player1.life_points > 0 || player2.life_points > 0)
  # show human
  puts user.show_state

  puts "*******************************"
  puts "Quelle action veux-tu effectuer ?"
  puts "\n>a : chercher une meilleure arme"
  puts ">s : chercher à se soigner"
  # puts "attaquer un joueur en vue :"
  puts ">1 : attaquer -> #{player1.name}"
  print "#{player1.show_state}"
  puts "\n>2 : attaquer -> #{player2.name}"
  print "#{player2.show_state} "

  print "\n> "
  choice = gets.chomp

  case choice
  when "a"
    user.search_weapon
  when "s"
    user.search_health_pack
  when "1"
    user.attacks(player1) if player1.life_points > 0
  when "2"
    user.attacks(player2) if player2.life_points > 0
  else
    puts "Choix invalide, réessaie."
  end

  # ennemi strike back
  
  if player1.life_points > 0 || player2.life_points > 0
    puts "\nLes autres joueurs t'attaquent !" 
    enemies.each do |enemy|
    enemy.attacks(user) if enemy.life_points > 0
    end
  end

  # waiting for key entry
  puts "\nAppuie sur Entrée pour continuer"
  gets.chomp
end

puts "GAME OVER"
if user.life_points > 0
  puts "BRAVO ! TU AS GAGNE !"
else
  puts "Loser ! Tu as perdu !"
end