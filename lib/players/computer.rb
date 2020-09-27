module Players #here we have an overriding module class Players that wraps around the entire class, and then:
  class Computer < Player  #this 'class Computer' inherits all of the functionality from the Player module that we have 
    def move(board)
      if board.cells[0] == " " || ""
        "1"
      elsif board.cells[0] == " " || ""
        "1"
      
      
      
    end 
  end 
  
end 