require "./game"
require "./player"

game = Game.new
players = [Player.new, Player.new]

while game.game_state do
  i = 1
  players.each do |player|
    if !game.game_state
      break  
    end

    puts "Player #{i}: " + game.get_question
    print "> "
    answer = gets.chomp.to_i
    if !game.get_result(answer)
      player.wrong_answer(game)
      puts "Player #{i}: Seriously? No!"
    else
      puts "Player #{i}: YES! You are correct."
    end
    i = (i % players.length) +1
    if game.game_state
      puts "P1: #{players[0].life}/3 vs P2: #{players[1].life}/3"
      puts "----- NEW TURN -----"
    else
      puts "Player #{i} wins with a score of #{players[i - 1].life}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
    end
  end
end