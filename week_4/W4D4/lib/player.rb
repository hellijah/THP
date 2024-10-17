require 'colorize'

class Player
  attr_accessor :name, :symbol, :wins

  def initialize(name, symbol, color)
    @name = name.colorize(color)
    @symbol = symbol.colorize(color)
    @wins = 0
  end
end