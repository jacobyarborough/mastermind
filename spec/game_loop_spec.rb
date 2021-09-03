require 'rspec'
require './lib/phrase'
require './lib/game_repl'

describe GameLoop do

  describe "#initialize" do
    "it creates an instance of the GameLoop class with attributes" do
      game_loop_1 = GameLoop.new

      expect(game_loop_1).to be_an_instance_of(GameLoop)
    end
  end

end 
