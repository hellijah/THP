require 'colorize'

class Player
  attr_reader :name, :symbol

  def initialize(name, symbol, color)
    @name = name.colorize(color)
    @symbol = symbol
  end
end