class Game
  require_relative "player.rb"
  require_relative "board.rb"

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
      puts "Therefore Player 2 gets the opposite."
    elsif answer.upcase == symbol[1]
      @player1 = Player.new(symbol[1])
      @player2 = Player.new(symbol[0])
      puts "Therefore Player 2 gets the opposite"
     else
      puts "This is not a valid symbol!"
      self.initialize_player
    end
  end

  def intro
    puts "Welcome to Tic-Tac-Toe - programmed and designed by mistervoga"
    puts "The rules are as following: The player who first accomplishes"
    puts "3 of his symbols in a row, may it be horizontally, vertically or"
    puts "diagonally, wins the game."
  end


  #compose all functions together to play the game

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
      puts "Enter a number to place your symbol. Choose wisely :D"
      answer = gets.chomp
      @board.place_symbol(current_player, answer)
      current_player.moves << answer.to_i
      if @board.check_win(current_player)
        @board.show_board
        break
      end
      turn += 1
      if turn > 8
        puts "It's a draw! Good game!"
        @board.show_board
      end
    end
  end
end

play = Game.new
play.play_round
