require 'rspec'
require './lib/phrase'
require './lib/game_flow'

describe GameFlow do

  describe "#initialize" do
    it "creates an instance of GameFlow with readable attributes" do
      phrase = Phrase.new
      guess = "rgby"
      phrase.parse_guess(guess)
      game = GameFlow.new(phrase)

      expect(game.phrase).to be_an_instance_of(Phrase)
      expect(game).to be_an_instance_of(GameFlow)
      expect(game.phrase.guess_phrase).to eq(['r', 'g', 'b', 'y'])
      expect(game.phrase.secret_phrase.length).to eq(4)
    end
  end

end
