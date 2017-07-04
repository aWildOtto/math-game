class Player
  attr_accessor :life
  
  def initialize
    @life = 3  
  end

  def wrong_answer(game)
    @life = @life - 1
    if @life <= 0
      game.game_state = false
    end
  end



end