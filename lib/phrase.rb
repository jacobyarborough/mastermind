class Phrase

  attr_accessor :guess_phrase
  attr_reader :secret_phrase

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

  def parse_guess(guess)
    @guess_phrase = guess.split("")
  end

  def num_correct
    correct = 0
    @guess_phrase.uniq.each do |element|
      if @secret_phrase.include?(element) == true
        correct += 1
      end
    end
    return correct
  end

  def pos_correct
    correct = 0
    @guess_phrase.each_with_index do |element, index|
      if @secret_phrase[index] == element
        correct += 1
      end
    end
  return correct
  end

end
