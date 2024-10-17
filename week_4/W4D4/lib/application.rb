class Application
  
  def perform
    game = Game.new
    game.play
    puts "Voulez-vous rejouer ? (o/n)"
    replay = gets.chomp
    perform if replay == "o"
  end
end