class Game
  attr_accessor :board, :player_1, :player_2 
  
  WIN_COMBINATIONS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [6, 4, 2]
  ]

  def initialize(player_1=Players::Human.new("X"), player_2=Players::Human.new("O"), board=Board.new)
     @player_1 = player_1
     @player_2 = player_2
     @board = board
     # @board.display
  end 
  
  def current_player
    # board.turn_count.even? ? player_1 : player_2
    board.turn_count % 2 == 0 ? player_1 : player_2
  end 
  
  def over?
    won? || draw?  
    # if either the won? or the draw? methods return true, the over? method returns true
  end 
  
  def won?
    # need to iterated through each combo and see whether or not in each of those cells is the same character
    WIN_COMBINATIONS.detect do |winner|
      @board.cells[winner[0]]    #baord array, first cells
  end 
  
  def draw?
    @board.full? && !won? 
  end 
   
  
end 

