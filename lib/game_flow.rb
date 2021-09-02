class GameFlow

  attr_reader :phrase

  def initialize
    @phrase = phrase
  end

  def won_game?
    phrase.num_correct == 4 && phrase.pos_correct == 4
  end


  def play
    again = 'no'
    begin
      @phrase = Phrase.new
      guess_count = 0
      begin
        p "enter guess"
        print "> "
        guess = $stdin.gets.chomp
        phrase.parse_guess(guess)
        p "#{phrase.guess_phrase} has #{phrase.num_correct} elements correct with #{phrase.pos_correct} in the correct positions"
        guess_count += 1
        p "you've taken #{guess_count} guesses"
      end until phrase.num_correct == 4 && phrase.pos_correct == 4
      p "You have won!"
      p "would you like to play again? Enter yes to play again or quit to end."
      print "> "
      again = $stdin.gets.chomp
    end until again != "yes"
  end

end
