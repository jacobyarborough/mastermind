require 'rspec'
require './lib/phrase'
require './lib/game_repl'
require './lib/game_loop'
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

end
