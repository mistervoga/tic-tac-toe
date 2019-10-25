class Board
  attr_accessor :board

    @@WINNING_POSITIONS = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 5, 9], [3, 5, 7], [1, 4, 7], [2, 5, 8], [3, 6, 9]]

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

  def check_win(player)
    @@WINNING_POSITIONS.each do |i, j|
        if @@WINNING_POSITIONS[i] == player.moves
          puts "#{player} wins the game!"
          true
        end
      end
    false
  end

  def to_s
    show_board
  end
end

