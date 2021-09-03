class GameLoop

  attr_reader :game_repl

  def initialize
    @game_repl = game_repl
  end

  def go
    again = 'yes'
    until again == 'no'
      @game_repl = GameRepl.new
      @game_repl.play
    end
    p "You have won the game!"
    p "Would you like to play again? Enter 'yes' or 'no'"
    print "> "
    again = $stdin.gets.chomp
  end

end
