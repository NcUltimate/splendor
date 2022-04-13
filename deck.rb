class Deck
  include Enumerable

  class EmptyDeckError < StandardError; end
  class CardNotVisibleError < StandardError; end
  class WrongCardColorError < StandardError; end

  attr_reader :cards
  def initialize
    @cards = []
  end

  def each(&block)
    cards.each(&block)
  end

  def shuffle!
    cards.shuffle!
  end

  def put!(card)
    cards << card
    card
  end

  def take!
    raise EmptyDeckError if cards.empty?
    cards.shift
  end

  def take!(card)
    raise CardNotVisibleError unless top4.include?(card)
    raise WrongCardColorError unless card.color == self.class.color
    cards.delete(card)
  end

  def top4
    cards[0...4]
  end
end