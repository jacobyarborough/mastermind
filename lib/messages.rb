class Messages

  def intro
    print "Welcome to MASTERMIND

Would you like to (p)lay, read the (i)nstructions, or (q)uit?

> "
  end

  def instructions
    print "--------------------------------------------------------------------------------------
A sequence containing some or all of the elements (r)ed, (g)reen, (b)lue, and (y)ellow
has been generated. It contains four elements.

Use (q)uit at any time to end the game.
Use (c)heat to peak at the solution.
Use (i)nstructions to view the game instructions.
--------------------------------------------------------------------------------------"
  end

  def game_start
    print "--------------------------------------------------------------------------------------
I have generated a beginner sequence with four elements made up of:
(r)ed, (g)reen, (b)lue, and (y)ellow.

Use (q)uit at any time to end the game.
--------------------------------------------------------------------------------------"
  end

  def default_guess(guess_phrase, num_correct, pos_correct, guess_count)
    print "--------------------------------------------------------------------------------------
#{guess_phrase} has #{num_correct} of the correct elements, with #{pos_correct} in the correct positions.
You have taken #{guess_count} guess(es).
--------------------------------------------------------------------------------------"
  end

  def game_won(secret_phrase, guess_count, time_diff)
    print "--------------------------------------------------------------------------------------
Congratulations! You guessed the sequnce #{secret_phrase} in #{guess_count} guess(es) in #{time_diff} seconds.

Do you want to (p)lay again or (q)uit?
--------------------------------------------------------------------------------------"
  end

  def too_long(guess_phrase)
    print "#{guess_phrase} is too long, try again\n"
  end

  def too_short(guess_phrase)
    print "#{guess_phrase} is too short, try again\n"
  end

  def cheat(secret_phrase)
    puts "--------------------------------------------------------------------------------------"
    puts "The secret phrase is '#{secret_phrase.join()}'."
    puts "--------------------------------------------------------------------------------------"
  end

end
