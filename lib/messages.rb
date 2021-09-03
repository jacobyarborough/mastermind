class Messages

  def intro
    puts "Welcome to MASTERMIND\nWould you like to (p)lay,read the (i)nstructions, or (q)uit?\n>"
  end

  def instructions
    puts "I have generated a sequence with four elements made up of:\n (r)ed,(g)reen, (b)lue, and (y)ellow.n\Use (q)uit at any time to end the game.\nUse (c)heat to peak at the solution."
  end

  def game_start
    puts "I have generated a beginner sequence with four elements made up of:\n (r)ed,(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.\nWhat's your guess?"
  end

  def incorrect_guess(phrase, count)
    puts "#{phrase.guess_phrase} has #{phrase.num_correct} elements with #{phrase.pos_correct} in the correct positions.\n You've taken #{count} guess\n"
  end

  def game_won(phrase, count, time)
    puts "Congratulations! You guessed the sequnce '#{phrase.guess_phrase}' in #{count} guesses in over #{time}\nDo you want to (p)lay again or (q)uit?"
  end

  def too_long(phrase)
    puts "#{phrase.guess_phrase} is too long, try again\n"
  end

  def too_short(phrase)
    puts "#{phrase.guess_phrase} is too short, try again\n"
  end

end