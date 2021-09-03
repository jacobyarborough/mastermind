class GameLoop

  attr_reader :game_repl

  def initialize
    @game_repl = game_repl
  end

  def go
    game_status = ''
    while game_status != 'e'
      p 'Welcome to Mastermind. If you would like to start the game \nenter y'
      game_status = $stdin.gets.chomp
      if game_status == 'y'
        @game_repl = GameRepl.new
        @game_repl.play
        p "You have won the game!"
        #p "Would you like to play again? Enter 'yes' or 'no'"
        #print "> "
      elsif game_status == 'i'
        p "here is some info"
      elsif game_status == 'e'
        return
      end
    end
  end

end
