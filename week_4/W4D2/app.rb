require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Josiane")
player2 = Player.new("José")


while player1.life_points > 0 && player2.life_points > 0

  puts "Voici l'état de chaque joueur :"
  player1.show_state
  player2.show_state

  puts "\n **************** \nAppuyez sur Entrée pour continuer..."
  gets

  puts "\n **************** \nPassons à la phase d'attaque :"
  player1.attacks(player2)
  break if player2.life_points <= 0

  player2.attacks(player1)
  break if player1.life_points <= 0

  puts "\n **************** "
end

puts "\nLe combat est terminé."
if player1.life_points > 0
  puts "#{player1.name} a gagné !!!"
else
  puts "#{player2.name} a gagné !!!"
end

# binding.pry