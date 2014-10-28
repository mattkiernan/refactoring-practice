class Judge

  POSSIBLE_RESULTS = {
    "Rock" => "Paper",
    "Paper" => "Scissors",
    "Scissors" => "Rock"
  }

  def initialize(player_move, computer_move)
    @player_move = player_move
    @computer_move = computer_move
    check_for_tie || check_for_winner
  end


  def check_for_tie
    if @player_move == @computer_move
      puts "Tie"
      true
    end
  end 

  def check_for_winner
    if @computer_move == POSSIBLE_RESULTS[@player_move]
      puts "Computer wins"
    else
      puts "Player wins"
    end
  end

end
