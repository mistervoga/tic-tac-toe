class Player
attr_accessor :symbol, :moves
  
  def initialize(symbol)
    @symbol = symbol
    @moves = []
  end
end
