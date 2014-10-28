class Player

  def display_hand
    puts "What is your move?"
    @player_move = gets.chomp
    puts "Player choses #{@player_move}"
    @player_move
  end

end
