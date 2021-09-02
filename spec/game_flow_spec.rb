require 'rspec'
require './lib/phrase'
require './lib/game_flow'

describe GameFlow do

  describe "#initialize" do
    it "creates an instance of GameFlow with readable attributes" do
      guess = "rgby"
      game = GameFlow.new
      game.phrase.parse_guess(guess)

      expect(game.phrase).to be_an_instance_of(Phrase)
      expect(game).to be_an_instance_of(GameFlow)
      expect(game.phrase.guess_phrase).to eq(['r', 'g', 'b', 'y'])
      expect(game.phrase.secret_phrase.length).to eq(4)
    end
  end

  describe "#play" do
    xit "accepts a guess and returns a comparison to the secret phrase" do
      game = GameFlow.new
      game.play
      expect(game.play).to respond_to(:play)
      expect(game.phrase.num_correct).to be_between(0, 4)
      expect(game.phrase.pos_correct).to be_between(0, 4)
    end
  end

  describe "#game_won?" do
    xit "returns true if game has been won" do
      phrase = Phase.new


      expect()
    end
  end

  describe "#new_phrase" do
    xit "creates a new phrase instance object" do

    end
  end

end
