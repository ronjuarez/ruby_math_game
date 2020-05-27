class Game
  attr_accessor :player1, :player2, :current_player, :winner

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @winner = nil
    @current_player = player1
  end

  def new_turn
    if self.current_player == @player1
      self.current_player = @player2
    elsif self.current_player == @player2
      self.current_player = @player1
    end
  end

  def update_score
    puts "#{player1.name}: #{player1.life}/3 vs #{player2.name}: #{player2.life}/3"
  end

  def end_game 
    puts "\n" + '----GAME OVER----'
    puts "#{winner.name} wins with a score of #{winner.life}/3."
    puts 'Good bye!'
  end

  def start 
    while @winner == nil
      puts "\n" + '-----NEW TURN-----'
      puts "#{current_player.name}, it's your turn!"

      correct_answer = Question.ask_question
      player_answer = gets.chomp.to_i 
      current_player.validate_answer(correct_answer, player_answer)
    
      if current_player.life == 0
        self.new_turn()
        @winner = current_player
        break
      end

      self.update_score()

      self.new_turn()
    end

    self.end_game()
  end
end