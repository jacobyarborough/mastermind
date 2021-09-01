require 'rspec'
require './lib/phrase'
require './lib/game_flow'

describe GameFlow do

  describe "#initialize" do
    it "creates an instance of GameFlow with readable attributes" do
      game = GameFlow.new

      expect(game).to be_an_instance_of(GameFlow)
    end
  end

end
