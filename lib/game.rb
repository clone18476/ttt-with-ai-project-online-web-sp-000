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

  def initialize(player_1=Players::Human, player_2=Players::Human, board=Board)
     
  end 
  
  
end 

