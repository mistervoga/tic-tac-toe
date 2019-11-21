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
        permutation = player.moves.combination(3).to_a
        @@WINNING_POSITIONS.each do |i|
          permutation.each do |j|
                if i.sort == j.sort
                    puts "Congratulations #{player}, you win!"
                    return true
                end
            end
        end
      return false
  end

  def tie?
    if @player1.moves + @player2.moves > 8
      puts "It's a tie"
    end
    
  end

  def to_s
    show_board
  end
end


board = Board.new
