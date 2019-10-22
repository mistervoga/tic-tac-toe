class Board
  attr_accessor :board

  def initialize
    @board = ("1""2""3""4""5""6""7""8""9")
  end

  def place_symbol(player, position)
    @board[position] = player.symbol
  end

  def show_board
    puts "#---+---+---+---#"
    puts "#---#{board[0]}---#{board[1]}---#{board[2]}---#"
    puts "#---#{board[3]}---#{board[4]}---#{board[5]}---#"
    puts "#---#{board[6]}---#{board[7]}---#{board[8]}---#"
    puts "#---+---+---+---#"
  end

  def to_s
    show_board
  end

  private

  def is_placed?(position)
    symbol = ["X", "O"]
    if  symbol.any?(@board[position])
      return true
    end
    false
  end
end

