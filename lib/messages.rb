class Messages

  def intro
    puts "Welcome to MASTERMIND"
    puts ""
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    puts "> "
  end

  def instructions
    puts "--------------------------------------------------------------------------------------"
    puts "A sequence containing some or all of the elements (r)ed, (g)reen, (b)lue, and (y)ellow"
    puts "has been generated. It contains four elements."
    puts ""
    puts "Use (q)uit at any time to end the game."
    puts "Use (c)heat to peak at the solution."
    puts "Use (i)nstructions to view the game instructions."
    puts "--------------------------------------------------------------------------------------"
  end

  def game_start
    puts "--------------------------------------------------------------------------------------"
    puts "I have generated a beginner sequence with four elements made up of:"
    puts "(r)ed, (g)reen, (b)lue, and (y)ellow."
    puts ""
    puts "Use (q)uit at any time to end the game."
    puts "--------------------------------------------------------------------------------------"
  end

  def default_guess(guess_phrase, num_correct, pos_correct, guess_count)
    puts "--------------------------------------------------------------------------------------"
    puts "#{guess_phrase} has #{num_correct} of the correct elements, with #{pos_correct} in the correct positions."
    puts "You have taken #{guess_count} guess(es)."
    puts "--------------------------------------------------------------------------------------"
  end

  def game_won(secret_phrase, guess_count, time_diff)
    puts "--------------------------------------------------------------------------------------"
    puts "Congratulations! You guessed the sequnce '#{secret_phrase}' in #{guess_count} guess(es) in #{time_diff} seconds."
    puts ""
    puts "Do you want to (p)lay again or (q)uit?"
    puts "--------------------------------------------------------------------------------------"
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
