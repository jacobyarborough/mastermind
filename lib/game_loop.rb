class GameLoop

  attr_reader :game_repl

  def initialize
    @game_repl = GameRepl.new
    @game_loop_message = Messages.new
  end

  def go
    while @game_repl.phrase.guess_phrase != ['q']
      @game_loop_message.intro
      @game_repl.phrase.guess_phrase.push($stdin.gets.chomp)
      while @game_repl.phrase.guess_phrase != ['q']
        if @game_repl.phrase.guess_phrase == ['p']
          @game_loop_message.game_start
          @game_repl = GameRepl.new
          @game_repl.play
          if @game_repl.phrase.guess_phrase == ['q']
            @game_repl.phrase.guess_phrase = []
            break
          end
          @game_repl.phrase.guess_phrase = []
          @game_repl.phrase.guess_phrase.push($stdin.gets.chomp)
        elsif @game_repl.phrase.guess_phrase == ['i']
          @game_loop_message.instructions
          @game_repl.phrase.guess_phrase = []
          @game_loop_message.intro
          @game_repl.phrase.guess_phrase.push($stdin.gets.chomp)
        elsif @game_repl.phrase.guess_phrase == ['q']
          return
        end
      end
    end
  end

end
