class Game
  require_relative "player.rb"
  require_relative "board.rb"

  @@WINNING_POSITIONS = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 5, 9], [3, 5, 7], [1, 4, 7], [2, 5, 8], [3, 6, 9]]

  def initialize
    @board = Board.new
  end

  def initialize_player
    symbol = ["X", "O"]
    puts "Which Symbol do you choose Player 1? X or O?"
    answer = gets.chomp
    if answer.upcase == symbol[0]
      @player1 = Player.new(symbol[0])
      @player2 = Player.new(symbol[1])
    elsif answer.upcase == symbol[1]
      @player1 = Player.new(symbol[1])
      @player2 = Player.new(symbol[0])
    else
      
    end
    puts "Therefore Player 2 gets the opposite!"
  end

  def intro
    puts "Welcome to Tic-Tac-Toe - programmed and designed by mistervoga"
    puts "The rules are as following: The player who first accomplishes"
    puts "3 of his symbols in a row, may it be horizontally, vertically or"
    puts "diagonally, wins the game."
  end

  def check_win(player)
    player.moves.each do |i|
      
      
    end
  end
  
  def play_round
    self.intro
    self.initialize_player
    turn = 0
    while turn < 9
      if (turn % 2 == 0)
        current_player = @player1
      else
        current_player = @player2
      end
      @board.show_board
      puts "Click one number to place your symbol. Choose wisely :D"
      answer = gets.chomp
      current_player.moves << answer
      @board.place_symbol(current_player, answer)
      check_win(current_player)
      turn +=1
    end
  end
end

play = Game.new
play.play_round
