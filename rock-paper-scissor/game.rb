require "./player"
require "./computer"
require "./judge"

class Game

  def play
    player_move = Player.new.display_hand
    computer_move = Computer.new.display_hand
    Judge.new(player_move, computer_move)
  end

end

game = Game.new
game.play
