class GameLoop

  attr_reader :game_repl

  def initialize
    @game_repl = GameRepl.new
    @game_loop_message = Messages.new
  end

  def standard_play
    @game_loop_message.game_start
    @game_repl = GameRepl.new
    @game_repl.play
    if @game_repl.phrase.guess_phrase == ['q']
      return
    end
    @game_repl.phrase.guess_phrase = []
    @game_repl.phrase.guess_phrase.push($stdin.gets.chomp)
  end

  def instruction_play
    @game_loop_message.instructions
    @game_repl.phrase.guess_phrase = []
    @game_loop_message.intro
    @game_repl.phrase.guess_phrase.push($stdin.gets.chomp)
  end

  def main_game_play_loop
    while @game_repl.phrase.guess_phrase != ['q']
      if @game_repl.phrase.guess_phrase == ['p']
        standard_play
      elsif @game_repl.phrase.guess_phrase == ['i']
        instruction_play
      elsif @game_repl.phrase.guess_phrase == ['q']
        @game_repl.phrase.guess_phrase = []
        return
      end
    end
  end

  def go
    while @game_repl.phrase.guess_phrase != ['q']
      @game_loop_message.intro
      @game_repl.phrase.guess_phrase.push($stdin.gets.chomp)
      return if @game_repl.phrase.guess_phrase == ['q']
      main_game_play_loop
    end
  end

end
