require 'rspec'
require './lib/phrase'
require './lib/turn'

describe Turn do

  describe "#initialize" do
    it "initiazes an instance of Turn" do
    turn = Turn.new

    expect(turn).to be_an_instance_of(Turn)
    end
  end

  describe "#game_won?" do
    it "returns true if the secret phrase has been guessed" do
      turn = Turn.new
      sec_phrase = turn.phrase.secret_phrase
      turn.phrase.parse_guess(sec_phrase.join)

      expect(turn.game_won?).to eq(true)
    end
  end

  describe "#assign_guss" do
    it "assigns the user guess to the phrase object" do
      turn = Turn.new
      turn.assign_guess

      expect(turn.phrase.guess_phrase).to eq(['r', 'g', 'b', 'y'])
    end
  end

end
