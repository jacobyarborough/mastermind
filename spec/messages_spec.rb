require 'rspec'
require './lib/messages'

describe Messages do

  describe "#intro" do
    it "puts the intro message" do
      expect do
        Messages.new.intro
      end.to output("Welcome to MASTERMIND

Would you like to (p)lay, read the (i)nstructions, or (q)uit?

> ").to_stdout
    end
  end

  describe "#instructions" do
    it "puts the intro message" do
      expect do
        Messages.new.instructions
      end.to output("--------------------------------------------------------------------------------------
A sequence containing some or all of the elements (r)ed, (g)reen, (b)lue, and (y)ellow
has been generated. It contains four elements.

Use (q)uit at any time to end the game.
Use (c)heat to peak at the solution.
Use (i)nstructions to view the game instructions.
--------------------------------------------------------------------------------------").to_stdout
    end
  end

  describe "#game_start" do
    it "puts the game_start message" do
      expect do
        Messages.new.game_start
      end.to output("--------------------------------------------------------------------------------------
I have generated a beginner sequence with four elements made up of:
(r)ed, (g)reen, (b)lue, and (y)ellow.

Use (q)uit at any time to end the game.
--------------------------------------------------------------------------------------").to_stdout
    end
  end

  describe "#default_guess" do
    it "puts the default_guess message" do
      guess_phrase = ['r', 'g', 'g', 'b']
      num_correct = 2
      pos_correct = 1
      guess_counter = 0
      expect do
        Messages.new.default_guess(guess_phrase.join, num_correct, pos_correct, guess_counter)
      end.to output("--------------------------------------------------------------------------------------
rggb has 2 of the correct elements, with 1 in the correct positions.
You have taken 0 guess(es).
--------------------------------------------------------------------------------------").to_stdout
    end
  end

  describe "#game_won" do
    it "puts the game_won message" do
      secret_phrase = ['r','r','r','g']
      guess_counter = 0
      time_diff = 0.0

      expect do
        Messages.new.game_won(secret_phrase.join, guess_counter, time_diff)
      end.to output("--------------------------------------------------------------------------------------
Congratulations! You guessed the sequnce rrrg in 0 guess(es) in 0.0 seconds.

Do you want to (p)lay again or (q)uit?
--------------------------------------------------------------------------------------").to_stdout
    end
  end

  describe "#cheat" do
    it "puts the cheat message" do
      secret_phrase = ['r','r','r','g']

      expect do
        Messages.new.cheat(secret_phrase.join)
      end.to output("--------------------------------------------------------------------------------------
The secret phrase is rrrg.
--------------------------------------------------------------------------------------").to_stdout
    end
  end

end
