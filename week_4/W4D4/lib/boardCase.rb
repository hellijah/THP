class BoardCase
  attr_accessor :value, :position

  def initialize(position)
    @position = position
    @value = " "
  end
end