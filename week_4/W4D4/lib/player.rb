require 'colorize'

class Player
  attr_accessor :name, :symbol

  def initialize(name, symbol, color)
    @name = name.colorize(color)
    @symbol = symbol
  end
end