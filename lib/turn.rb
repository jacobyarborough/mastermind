class Turn

  attr_reader :phrase

  def initialize
    @phrase = Phrase.new
  end

  def game_won?
    @phrase.num_correct == @phrase.secret_phrase.uniq.length && @phrase.pos_correct == 4
  end

  def assign_guess
    p "enter guess"
    print "> "
    guess = $stdin.gets.chomp
    phrase.parse_guess(guess)
  end

  def play
    guess_count = 0
    until game_won?
      assign_guess
      p "#{phrase.guess_phrase} has #{phrase.num_correct} elements correct with #{phrase.pos_correct} in the correct positions"
      guess_count += 1
      p "you've taken #{guess_count} guesses"
    end
  end

end
