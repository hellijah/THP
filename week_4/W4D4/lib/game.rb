class Game
  attr_accessor :board, :players, :current_player, :status

  def initialize
    @board = Board.new
    puts "Entrez le nom du joueur 1 :"
    name1 = gets.chomp
    puts "Entrez le nom du joueur 2 :"
    name2 = gets.chomp
    @players = [Player.new(name1, "X", :red), Player.new(name2, "O", :blue)]
    @current_player = @players[0]
    @status = "en cours"
  end

  def play
    while @status == "en cours"
      system "clear"
      turn
      if @board.victory?
        puts "#{@current_player.name} a gagné !"
        @status = "fin"
      elsif @board.full?
        puts "Match nul !"
        @status = "fin"
      else
        switch_player
      end
    end
  end

  def turn
    system "clear"
    @board.display_board
    puts "#{@current_player.name}, à toi de jouer #{@current_player.symbol}. Choisis une case (ex: A1, B2) :"
    move = gets.chomp
    valid_move = @board.update_case(move, @current_player.symbol)
    turn unless valid_move
  end

  def switch_player
    @current_player = @current_player == @players[0] ? @players[1] : @players[0]
  end
end