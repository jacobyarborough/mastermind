class GameRepl

  attr_reader :phrase

  def initialize
    @phrase = Phrase.new
  end

  def game_won?
    @phrase.num_correct == @phrase.secret_phrase.uniq.length
    && @phrase.pos_correct == @phrase.secret_phrase.length
  end

  def assign_guess
    p "enter guess"
    print "> "
    guess = $stdin.gets.chomp
    phrase.parse_guess(guess)
  end

  def evaluate_guess
    if phrase.guess_phrase == ['q']
      return
    elsif phrase.guess_phrase == ["i"]
      message.instructions
    elsif phrase.guess_phrase == ["c"]
      message.cheat
    else
      message.default_guess
    end
  end

  def play
    guess_count = 0
    until game_won? == true
      assign_guess
      evaluate_guess
    end
    message.game_won
  end

end
