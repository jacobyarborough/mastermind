class GameRepl

  attr_reader :phrase

  def initialize
    @phrase = Phrase.new
    @message = Messages.new
    @guess_counter = 0
    @time_diff = 0.0
  end

  def game_won?
    @phrase.num_correct == @phrase.secret_phrase.uniq.length && @phrase.pos_correct == @phrase.secret_phrase.length
  end

  def assign_guess
    print "
enter guess
> "
    guess = $stdin.gets.chomp
    @phrase.parse_guess(guess)
  end

  def evaluate_guess
    if @phrase.guess_phrase == ['q']
      return
    elsif @phrase.guess_phrase == ["i"]
      @message.instructions
    elsif @phrase.guess_phrase == ["c"]
      @message.cheat(@phrase.secret_phrase.join)
    else
      @message.default_guess(@phrase.guess_phrase.join, @phrase.num_correct, @phrase.pos_correct, @guess_counter)
    end
  end


  def play
    start = Time.now
    until game_won? == true
      @guess_counter += 1
      if @phrase.guess_phrase == ['q']
        return
      end
      assign_guess
      evaluate_guess
    end
    finish = Time.now
    @time_diff = (finish - start)
    @message.game_won(@phrase.secret_phrase.join, @guess_counter, @time_diff)
  end

end
