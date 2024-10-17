class Board
  attr_accessor :cases

  def initialize
    @cases = {}
    ("A".."C").each do |row|
      (1..3).each do |col|
        @cases["#{row}#{col}"] = BoardCase.new("#{row}#{col}")
      end
    end
  end

  def display_board
    puts "   1   2   3"
    puts "A  #{@cases['A1'].value} | #{@cases['A2'].value} | #{@cases['A3'].value}"
    puts "  ---+---+---"
    puts "B  #{@cases['B1'].value} | #{@cases['B2'].value} | #{@cases['B3'].value}"
    puts "  ---+---+---"
    puts "C  #{@cases['C1'].value} | #{@cases['C2'].value} | #{@cases['C3'].value}"
  end

  def update_case(position, symbol)
    if @cases[position].value == " "
      @cases[position].value = symbol
      return true
    else
      puts "Case déjà occupée. Choisis une autre case."
      return false
    end
  end

  def victory?
    winning_combinations = [
      ["A1", "A2", "A3"], ["B1", "B2", "B3"], ["C1", "C2", "C3"],
      ["A1", "B1", "C1"], ["A2", "B2", "C2"], ["A3", "B3", "C3"],
      ["A1", "B2", "C3"], ["A3", "B2", "C1"]
    ]
    winning_combinations.any? do |combination|
      values = combination.map { |pos| @cases[pos].value }
      values.uniq.length == 1 && values.first != " "
    end
  end

  def full?
    @cases.values.all? { |board_case| board_case.value != " " }
  end
end