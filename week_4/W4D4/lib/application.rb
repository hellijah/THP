class Application
  
  def perform
    game = Game.new
    game.play
    game.display_score
    puts "Voulez-vous rejouer ? (o/n)"
    replay = gets.chomp
    system "clear" if
    perform if replay == "o"
  end
end