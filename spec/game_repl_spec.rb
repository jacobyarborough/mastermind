require 'rspec'
require './lib/phrase'
require './lib/game_repl'
require './lib/messages'

describe GameRepl do

  describe "#initialize" do
    it "initiazes an instance of Turn" do
    turn = GameRepl.new

    expect(turn).to be_an_instance_of(GameRepl)
    end
  end

  describe "#game_won?" do
    it "returns true if the secret phrase has been guessed" do
      turn = GameRepl.new
      sec_phrase = turn.phrase.secret_phrase
      turn.phrase.parse_guess(sec_phrase.join)

      expect(turn.game_won?).to eq(true)
    end
  end

  describe "#assign_guess" do
    it "assigns the user guess to the phrase object" do
      turn = GameRepl.new
      turn.assign_guess

      expect(turn.phrase.guess_phrase).to eq(['r', 'g', 'b', 'y'])
    end
  end

  describe "#evaluate_guess" do
    it "given the input 'q' will return out of the function" do
      turn = GameRepl.new
      guess = 'q'
      phrase.parse_guess(guess)

      expect(turn.evaluate_guess).to eq(return)
    end

    it "given the input 'i' will print game info" do
      message = Messages.new
      turn = GameRepl.new
      guess = 'i'
      phrase.parse_guess(guess)

      expect(turn.evaluate_guess).to eq(message.instructions)
    end

    it "given the input 'c' will return the secret phrase" do
      turn = GameRepl.new

      expect(turn.evaluate_guess).to include("['r','g','g','g']")
    end
  end

end
