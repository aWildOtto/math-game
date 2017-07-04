class Game
  attr_accessor :game_state
  attr_accessor :x
  attr_accessor :y

  def initialize ()
    @game_state = true
  end
  
  def get_question
    @x = Random.new.rand(21)
    @y = Random.new.rand(21)
    "What does #{x} plus #{y} equal?"
  end

  def get_result(z)
    puts "#{@x} + #{@y} == #{z}: #{@x + @y == z }"
    @x + @y == z  
  end

end