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

end
