require 'rspec'
require './lib/phrase'

RSpec.describe Phrase do

  it 'exists' do
    phrase = Phrase.new
  end

  it 'has a secret_phrase array' do
    phrase = Phrase.new

    expect(phrase.secret_phrase.length).to eq(4)
    #expect(phrase.secret_phrase).to include(["r", "g", "b", "y"])
  end

  it 'has an empty guess_phrase array' do
    phrase = Phrase.new
    expect(phrase.guess_phrase.length).to eq(0)
    #expect(phrase.secret_phrase).to include("r" || "g" || "b" || "y")
  end

end
