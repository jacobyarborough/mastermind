require 'rspec'
require './lib/phrase'

RSpec.describe Phrase do

  it 'exists' do
    phrase = Phrase.new
  end

  it 'has a secret_phrase array' do
    phrase = Phrase.new

    expect(phrase.secret_phrase.length).to eq(4)
    expect(phrase.secret_phrase).to be_kind_of(Array)
    #expect(phrase.secret_phrase).to include(["r", "g", "b", "y"])
  end

  it 'has an empty guess_phrase array' do
    phrase = Phrase.new
    expect(phrase.guess_phrase.length).to eq(0)
    expect(phrase.secret_phrase).to be_kind_of(Array)
    #expect(phrase.secret_phrase).to include("r" || "g" || "b" || "y")
  end

  describe '#parse_guess' do
    it 'parses the guess into an array' do
      phrase = Phrase.new
      guess = "rgby"
      phrase.parse_guess(guess)
      expect(phrase.guess_phrase.length).to eq(4)
      expect(phrase.guess_phrase).to be_kind_of(Array)
    end
  end

  describe '#num_correct' do
    it 'returns the number correct' do
      phrase = Phrase.new
      guess = "rgby"
      phrase.parse_guess(guess)
      num_correct = phrase.num_correct
      expect(num_correct).to be_between(0, 4)
    end
  end

end
