class Computer

  POSSIBLE_MOVES = ["Rock",
           "Paper",
           "Scissors"]

  def display_hand
    @computer_move = POSSIBLE_MOVES.sample  
    puts "Computer choses #{@computer_move}"
    @computer_move
  end

end
