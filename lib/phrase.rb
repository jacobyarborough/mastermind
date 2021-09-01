class Phrase
  attr_reader :secret_phrase, :guess_phrase

  def initialize
    @secret_phrase = randomize
    @guess_phrase = []
  end

  def randomize
    arr = ["r", "g", "b", "y"]
    rand_ary = []
    4.times do
      rand_ary << arr.sample
    end
    rand_ary
  end

end
