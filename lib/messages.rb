class Messages

  def intro
    puts "Welcome to MASTERMIND"
    puts ""
    puts "Would you like to (p)lay,read the (i)nstructions, or (q)uit?"
    puts "> "
  end

  def instructions
    p "I have generated a sequence with four elements made up of:\n(r)ed,
    (g)reen, (b)lue, and (y)ellow.n\Use (q)uit at any time to end the game.
    \nUse (c)heat to peak at the solution."
  end

  def game_start
    p "I have generated a beginner sequence with four elements made up of:
    \n (r)ed,(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.\nWhat's your guess?"
  end

  def default_guess(guess_phrase, num_correct, pos_correct, guess_count)
    p "#{guess_phrase} has #{num_correct} elements
    with #{pos_correct} in the correct positions.\n You've taken
    #{guess_count} guess\n"
  end

  def game_won(secret_phrase, guess_count, time_diff)
    p "Congratulations! You guessed the sequnce
    '#{secret_phrase}' in #{guess_count} guesses in #{time_diff} seconds.
    \nDo you want to (p)lay again or (q)uit?"
  end

  def too_long(guess_phrase)
    p "#{guess_phrase} is too long, try again\n"
  end

  def too_short(guess_phrase)
    p "#{guess_phrase} is too short, try again\n"
  end

  def cheat(secret_phrase)
    p "The secret phrase is #{secret_phrase}"
  end

end
